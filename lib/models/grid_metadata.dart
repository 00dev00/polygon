import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'grid_metadata.freezed.dart';

@freezed
class GridMetadata with _$GridMetadata {
  const factory GridMetadata({
    @Default(5000) maxWidth,
    @Default(5000) maxHeight,
    @Default(2) dotRadius,
    @Default(40) cellSize,
    @Default([]) List<Offset> generatedDots,
    @Default(false) bool attachMode,
  }) = _GridMetadata;
}
