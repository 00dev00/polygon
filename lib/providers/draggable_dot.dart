import 'package:flutter/material.dart';
import 'package:polygon/providers/polygon.dart';
import 'package:polygon/utils/drawing_math.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'draggable_dot.g.dart';

@Riverpod(keepAlive: true)
class DraggabbleDotNotifier extends _$DraggabbleDotNotifier {
  @override
  int build() {
    return -1;
  }

  void updateDot(Offset draggedPoint) {
    final polygon = ref.read(polygonNotifierProvider);
    state = getClosestPoint(polygon.vertices, draggedPoint);
  }
}
