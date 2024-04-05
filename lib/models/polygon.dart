import 'dart:ui';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'polygon.freezed.dart';

@freezed
class Polygon with _$Polygon {
  const factory Polygon({
    required List<Offset> vertices,
    required bool isCompleted,
  }) = _Polygon;
}