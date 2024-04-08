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
  @override
  GridMetadata build(GridMetadata gridMetadata) {
    final grid = _generateGrid(
      maxHeight: gridMetadata.maxHeight,
      maxWidth: gridMetadata.maxWidth,
      dotRadius: gridMetadata.dotRadius,
      cellSize: gridMetadata.cellSize,
    );

    return gridMetadata.copyWith(
      generatedDots: grid,
    );
  }

  void toggleMode() {
    state = state.copyWith(attachMode: !state.attachMode);
  }

  List<Offset> _generateGrid({
    required double maxHeight,
    required double maxWidth,
    required double dotRadius,
    required double cellSize,
  }) {
    List<Offset> result = [];
    for (double x = dotRadius; x < maxWidth; x += cellSize) {
      for (double y = dotRadius; y < maxHeight; y += cellSize) {
        result.add(Offset(x, y));
      }
    }
    return result;
  }
}
