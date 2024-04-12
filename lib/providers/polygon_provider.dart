import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:polygon/models/polygon.dart';
import "package:polygon/providers/polygon_snapshots_provider.dart";
import 'package:polygon/utils/drawing_math.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'polygon_provider.g.dart';

@riverpod
class PolygonNotifier extends _$PolygonNotifier {
  @override
  Polygon build() {
    return const Polygon();
  }

  (bool success, String error) addPoint(
      Offset newPoint, List<Offset> generatedDots) {
    if (forbiddenSegment(state.vertices, newPoint)) {
      return (false, "Lines must not intersect");
    }

    if (state.attachedToGrid) {
      final closestGridPointIndex =
          getClosestGridPoint(generatedDots, newPoint);

      newPoint = generatedDots[closestGridPointIndex];
    }

    state = state.copyWith(
      vertices: [...state.vertices, newPoint],
      isCompleted: state.vertices.length > 1 &&
          polygonShouldBeClosed(
            newPoint,
            state.vertices.first,
          ),
    );

    ref.read(polygonSnapshotsNotifierProvider.notifier).addSnapshot(state);

    return (true, "");
  }

  // TODO: в светлом будущем переделать алгоритм, текущий неэффективен
  void toggleAttachMode(List<Offset> gridDots) {
    state = state.copyWith(attachedToGrid: !state.attachedToGrid);

    if (state.attachedToGrid && state.vertices.isNotEmpty) {
      List<Offset> newVertices = [];

      for (var i = 0; i < state.vertices.length; i++) {
        final gridIndex = getClosestGridPoint(gridDots, state.vertices[i]);
        newVertices.add(gridDots[gridIndex]);
      }

      state = state.copyWith(
        vertices: newVertices,
      );
      ref.read(polygonSnapshotsNotifierProvider.notifier).addSnapshot(state);
    }
  }

  void setDraggedPointPosition(Offset newPosition) {
    int index = state.draggedPointIndex;

    if (index == -1) {
      index = getClosestDraggablePoint(state.vertices, newPosition);
    }

    if (index != -1) {
      final newVertices = [
        ...state.vertices.sublist(0, index),
        newPosition,
        ...state.vertices.sublist(index + 1, state.vertices.length)
      ];
      final shouldBeCompleted = state.isCompleted ||
          state.vertices.length > 1 &&
              index == state.vertices.length - 1 &&
              polygonShouldBeClosed(
                newPosition,
                state.vertices.first,
              );

      state = state.copyWith(
        vertices: newVertices,
        isCompleted: shouldBeCompleted,
        draggedPointIndex: index,
      );
    }
  }

  void postDraggingUpdate() {
    // необязательная проверка
    // (логика ломалась из-за срабатывания drag-событий на колесико мыши)
    if (state.draggedPointIndex != -1) {
      state = state.copyWith(draggedPointIndex: -1);
      ref.read(polygonSnapshotsNotifierProvider.notifier).addSnapshot(state);
    }
  }

  void updateStateFromSnapshot(Polygon newPolygon) {
    state = newPolygon;
  }
}
