import 'dart:math';

import 'package:flutter/material.dart';

typedef LineSegment = ({Offset point1, Offset point2});

// на каком расстоянии от первой точки считаем,
// что можно соединяться с ней и замыкать полигон
const neighbourOffset = 100.0;

// максимальное расстояние от целевой точки,
// при котором можно считать, что мы ее "захватили"
const maxDragOffset = 20.0;

// считаем расстояние между точками по формуле Евклида
double calcDistance(Offset point1, Offset point2) {
  return sqrt(pow(point2.dx - point1.dx, 2) + (pow(point2.dy - point1.dy, 2)));
}

// ищем среди точек полигона наиболее подходящую для перетаскивания
int getClosestPoint(List<Offset> vertices, Offset dragPoint) {
  for (var i = 0; i < vertices.length; i++) {
    if (_pointsAreCloseEnough(dragPoint, vertices[i], maxDragOffset)) {
      return i;
    }
  }

  return -1;
}

bool polygonShouldBeClosed(Offset lastPoint, Offset firstPoint) =>
    _pointsAreCloseEnough(lastPoint, firstPoint, neighbourOffset);

bool _pointsAreCloseEnough(
    Offset firstPoint, Offset secondPoint, double delta) {
  double distance = calcDistance(firstPoint, secondPoint);

  return distance.compareTo(delta) < 0;
}

// проходим попарно имеющиеся вершины,
// к новой точке добавляем предыдущую вершину и получаем новый сегмент,
// который проверяем на пересечение с другими сторонами полигона
bool forbiddenSegment(List<Offset> vertices, Offset newPoint) {
  if (vertices.length > 2) {
    // не считаем пересечения для двух граней
    LineSegment newLs = (point1: vertices.last, point2: newPoint);

    for (var i = 0; i < vertices.length - 2; i++) {
      LineSegment currentLs = (point1: vertices[i], point2: vertices[i + 1]);

      if (_intersectingLines(newLs, currentLs)) {
        return true;
      }
    }
  }

  return false;
}

bool _intersectingLines(LineSegment line1, LineSegment line2) {
  TripletOrientation po1 = _getOrientation(
    line1.point1,
    line1.point2,
    line2.point1,
  );
  TripletOrientation po2 = _getOrientation(
    line1.point1,
    line1.point2,
    line2.point2,
  );
  TripletOrientation po3 = _getOrientation(
    line2.point1,
    line2.point2,
    line1.point1,
  );
  TripletOrientation po4 = _getOrientation(
    line2.point1,
    line2.point2,
    line1.point2,
  );

  return (po1 != po2 && po3 != po4);
}

// вычисляем разницу в наклонах прямых между точками
// чтобы сделать выводы об ориентации упорядоченных триплетов
TripletOrientation _getOrientation(Offset p1, Offset p2, Offset p3) {
  double val =
      (p2.dy - p1.dy) * (p3.dx - p2.dx) - (p2.dx - p1.dx) * (p3.dy - p2.dy);

  return switch (val) {
    0 => TripletOrientation.colinear,
    > 0 => TripletOrientation.clockwise,
    _ => TripletOrientation.counterclockwise
  };
}

enum TripletOrientation { clockwise, counterclockwise, colinear }
