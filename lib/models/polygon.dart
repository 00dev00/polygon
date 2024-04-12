import 'dart:ui';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'polygon.freezed.dart';

@freezed
class Polygon with _$Polygon {
  const factory Polygon({
    @Default([]) List<Offset> vertices,
    @Default(false) bool isCompleted,
    @Default(-1) int draggedPointIndex,
    @Default(false) bool attachedToGrid,
  }) = _Polygon;
}
