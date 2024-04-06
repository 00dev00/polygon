import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:polygon/models/polygon.dart';

part 'polygon_snapshots_storage.freezed.dart';

@freezed
class PolygonSnapshotsStorage with _$PolygonSnapshotsStorage {
  const factory PolygonSnapshotsStorage([
    @Default([]) List<Polygon> snapshots,
    @Default(-1) int activeSnapshotIndex,
  ]) = _PolygonSnapshotsStorage;
}
