import 'package:flutter/material.dart';
import 'package:polygon/constants/all.dart';
import 'package:polygon/models/grid_metadata.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'drawing_providers.g.dart';

@riverpod
Paint vertexInnerPaint(VertexInnerPaintRef ref) => Paint()
  ..color = pointInnerColor
  ..style = PaintingStyle.fill;

@riverpod
Paint vertexOuterPaint(VertexOuterPaintRef ref) => Paint()
  ..color = pointOuterColor
  ..style = PaintingStyle.stroke
  ..strokeWidth = 2;

@riverpod
Paint strokePaint(StrokePaintRef ref) => Paint()
  ..color = strokeColor
  ..style = PaintingStyle.stroke
  ..strokeJoin = StrokeJoin.miter
  ..strokeMiterLimit = 4
  ..strokeWidth = 4;

@riverpod
Paint gridDotPaint(GridDotPaintRef ref) => Paint()
  ..color = gridDotColor
  ..style = PaintingStyle.fill;

class AppPaints {
  final Paint vertexInnerPaint;
  final Paint vertexOuterPaint;
  final Paint strokePaint;
  final Paint gridDotPaint;

  AppPaints({
    required this.vertexInnerPaint,
    required this.vertexOuterPaint,
    required this.strokePaint,
    required this.gridDotPaint,
  });
}

@riverpod
class GridMetadataNotifier extends _$GridMetadataNotifier {
  static const double dotRadius = 2.0;
  static const double cellSize = 40.0;

  @override
  GridMetadata build({
    required double height,
    required double width,
  }) {
    final grid = _generateGrid(
      height: height,
      width: width,
    );

    return GridMetadata(
      height: height,
      width: width,
      cellSize: cellSize,
      dotRadius: dotRadius,
      generatedDots: grid,
    );
  }

  List<Offset> _generateGrid({
    required double height,
    required double width,
  }) {
    List<Offset> result = [];
    for (double x = dotRadius; x < width; x += cellSize) {
      for (double y = dotRadius; y < height; y += cellSize) {
        result.add(Offset(x, y));
      }
    }
    return result;
  }
}
