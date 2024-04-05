import 'package:flutter/material.dart';
import 'package:polygon/constants/all.dart';
import 'package:polygon/models/polygon.dart';
import 'package:polygon/providers/providers.dart';

const double gridCellSide = 40;
const double gridDotRadius = 2;

class CanvasService {
  final Canvas canvas;
  final Polygon polygon;
  final AppPaints appPaints;
  final Size canvasSize; // max height, max width

  CanvasService({
    required this.canvas,
    required this.polygon,
    required this.appPaints,
    this.canvasSize = const Size(5000, 5000),
  });

  void _drawGrid() {
    for (double x = gridDotRadius; x < canvasSize.width; x += gridCellSide) {
      for (double y = gridDotRadius; y < canvasSize.height; y += gridCellSide) {
        canvas.drawCircle(Offset(x, y), 2, appPaints.gridDotPaint);
      }
    }
  }

  void _drawPoint(Offset center) {
    canvas.drawCircle(center, pointRadius, appPaints.vertexInnerPaint);
    canvas.drawCircle(center, pointRadius, appPaints.vertexOuterPaint);
  }

  void _drawPolygon() {
    final vertices = polygon.vertices;
    if (vertices.isNotEmpty) {
      final path = Path();

      for (int i = 0; i < vertices.length - 1; i++) {
        path.moveTo(vertices[i].dx, vertices[i].dy);
        path.lineTo(vertices[i + 1].dx, vertices[i + 1].dy);
      }

      if (polygon.isCompleted) {
        path.lineTo(vertices[0].dx, vertices[0].dy);

        // не нашел варианта как нарисовать за один проход
        // вместе с предыдущим path'ом
        var polygonFill = Path()..addPolygon(vertices, true);
        canvas.drawPath(polygonFill, Paint()..color = pointInnerColor);
      }

      canvas.drawPath(path, appPaints.strokePaint);

      // не нашел возможности нарисовать круг
      // со стилем PaintingStyle.fill и добавить ему обводку границы
      // поэтому рисую один круг поверх другого
      for (Offset vertex in vertices) {
        _drawPoint(vertex);
      }
    }
  }

  void repaintCanvas() {
    _drawGrid();
    _drawPolygon();
  }
}
