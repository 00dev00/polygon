import 'dart:math';

import 'package:flutter/material.dart';

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
