import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'grid_metadata.freezed.dart';

@freezed
class GridMetadata with _$GridMetadata {
  const factory GridMetadata({
    @Default(5000) width,
    @Default(5000) height,
    @Default(2) dotRadius,
    @Default(40) cellSize,
    @Default([]) List<Offset> generatedDots,
  }) = _GridMetadata;
}
