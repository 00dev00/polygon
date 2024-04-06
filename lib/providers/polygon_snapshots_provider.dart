import 'package:polygon/models/polygon.dart';
import 'package:polygon/models/polygon_snapshots_storage.dart';
import 'package:polygon/providers/providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'polygon_snapshots_provider.g.dart';

@Riverpod(keepAlive: true)
class PolygonSnapshotsNotifier extends _$PolygonSnapshotsNotifier {
  @override
  PolygonSnapshotsStorage build() => const PolygonSnapshotsStorage();

  void addSnapshot(Polygon newPolygon) {
    final updatedSnapshots =
        state.snapshots.sublist(0, state.activeSnapshotIndex + 1);

    state = state.copyWith(
      snapshots: [...updatedSnapshots, newPolygon],
      activeSnapshotIndex: state.activeSnapshotIndex + 1,
    );
  }

  void undo() {
    if (state.activeSnapshotIndex == 0) {
      ref.invalidate(polygonNotifierProvider);
      ref.invalidateSelf();
    } else {
      state =
          state.copyWith(activeSnapshotIndex: state.activeSnapshotIndex - 1);

      _updatePolygon(state.activeSnapshotIndex);
    }
  }

  void redo() {
    if (state.activeSnapshotIndex != state.snapshots.length - 1) {
      state =
          state.copyWith(activeSnapshotIndex: state.activeSnapshotIndex + 1);
    }

    _updatePolygon(state.activeSnapshotIndex);
  }

  void _updatePolygon(int index) {
    final currentPolygon = state.snapshots[state.activeSnapshotIndex];
    ref
        .read(polygonNotifierProvider.notifier)
        .updateStateFromSnapshot(currentPolygon);
  }
}
