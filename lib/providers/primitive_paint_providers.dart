import 'package:flutter/material.dart';
import 'package:polygon/constants/all.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'primitive_paint_providers.g.dart';

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
