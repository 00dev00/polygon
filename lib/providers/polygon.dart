import 'package:flutter/material.dart';
import 'package:polygon/models/polygon.dart';
import 'package:polygon/providers/providers.dart';
import 'package:polygon/utils/drawing_math.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'polygon.g.dart';

@riverpod
class PolygonNotifier extends _$PolygonNotifier {
  @override
  Polygon build() {
    return const Polygon(vertices: [], isCompleted: false);
  }

  void addPoint(Offset newPoint) {
    state = state.copyWith(
      vertices: [...state.vertices, newPoint],
      isCompleted: state.vertices.length > 1 &&
          polygonShouldBeClosed(
            newPoint,
            state.vertices.first,
          ),
    );
  }

  void updatePoint(Offset newPosition) {
    int draggedPointIndex = ref.read(draggabbleDotNotifierProvider);

    if (draggedPointIndex != -1) {
      final newVertices = [
        ...state.vertices.sublist(0, draggedPointIndex),
        newPosition,
        ...state.vertices.sublist(draggedPointIndex + 1, state.vertices.length)
      ];
      final shouldBeCompleted = state.isCompleted ||
          state.vertices.length > 1 &&
              draggedPointIndex == state.vertices.length - 1 &&
              polygonShouldBeClosed(
                newPosition,
                state.vertices.first,
              );

      state = state.copyWith(
        vertices: newVertices,
        isCompleted: shouldBeCompleted,
      );
    }
  }
}
