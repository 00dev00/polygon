// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'polygon_snapshots_storage.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PolygonSnapshotsStorage {
  List<Polygon> get snapshots => throw _privateConstructorUsedError;
  int get activeSnapshotIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PolygonSnapshotsStorageCopyWith<PolygonSnapshotsStorage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PolygonSnapshotsStorageCopyWith<$Res> {
  factory $PolygonSnapshotsStorageCopyWith(PolygonSnapshotsStorage value,
          $Res Function(PolygonSnapshotsStorage) then) =
      _$PolygonSnapshotsStorageCopyWithImpl<$Res, PolygonSnapshotsStorage>;
  @useResult
  $Res call({List<Polygon> snapshots, int activeSnapshotIndex});
}

/// @nodoc
class _$PolygonSnapshotsStorageCopyWithImpl<$Res,
        $Val extends PolygonSnapshotsStorage>
    implements $PolygonSnapshotsStorageCopyWith<$Res> {
  _$PolygonSnapshotsStorageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? snapshots = null,
    Object? activeSnapshotIndex = null,
  }) {
    return _then(_value.copyWith(
      snapshots: null == snapshots
          ? _value.snapshots
          : snapshots // ignore: cast_nullable_to_non_nullable
              as List<Polygon>,
      activeSnapshotIndex: null == activeSnapshotIndex
          ? _value.activeSnapshotIndex
          : activeSnapshotIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PolygonSnapshotsStorageImplCopyWith<$Res>
    implements $PolygonSnapshotsStorageCopyWith<$Res> {
  factory _$$PolygonSnapshotsStorageImplCopyWith(
          _$PolygonSnapshotsStorageImpl value,
          $Res Function(_$PolygonSnapshotsStorageImpl) then) =
      __$$PolygonSnapshotsStorageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Polygon> snapshots, int activeSnapshotIndex});
}

/// @nodoc
class __$$PolygonSnapshotsStorageImplCopyWithImpl<$Res>
    extends _$PolygonSnapshotsStorageCopyWithImpl<$Res,
        _$PolygonSnapshotsStorageImpl>
    implements _$$PolygonSnapshotsStorageImplCopyWith<$Res> {
  __$$PolygonSnapshotsStorageImplCopyWithImpl(
      _$PolygonSnapshotsStorageImpl _value,
      $Res Function(_$PolygonSnapshotsStorageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? snapshots = null,
    Object? activeSnapshotIndex = null,
  }) {
    return _then(_$PolygonSnapshotsStorageImpl(
      null == snapshots
          ? _value._snapshots
          : snapshots // ignore: cast_nullable_to_non_nullable
              as List<Polygon>,
      null == activeSnapshotIndex
          ? _value.activeSnapshotIndex
          : activeSnapshotIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PolygonSnapshotsStorageImpl implements _PolygonSnapshotsStorage {
  const _$PolygonSnapshotsStorageImpl(
      [final List<Polygon> snapshots = const [], this.activeSnapshotIndex = -1])
      : _snapshots = snapshots;

  final List<Polygon> _snapshots;
  @override
  @JsonKey()
  List<Polygon> get snapshots {
    if (_snapshots is EqualUnmodifiableListView) return _snapshots;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_snapshots);
  }

  @override
  @JsonKey()
  final int activeSnapshotIndex;

  @override
  String toString() {
    return 'PolygonSnapshotsStorage(snapshots: $snapshots, activeSnapshotIndex: $activeSnapshotIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PolygonSnapshotsStorageImpl &&
            const DeepCollectionEquality()
                .equals(other._snapshots, _snapshots) &&
            (identical(other.activeSnapshotIndex, activeSnapshotIndex) ||
                other.activeSnapshotIndex == activeSnapshotIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_snapshots), activeSnapshotIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PolygonSnapshotsStorageImplCopyWith<_$PolygonSnapshotsStorageImpl>
      get copyWith => __$$PolygonSnapshotsStorageImplCopyWithImpl<
          _$PolygonSnapshotsStorageImpl>(this, _$identity);
}

abstract class _PolygonSnapshotsStorage implements PolygonSnapshotsStorage {
  const factory _PolygonSnapshotsStorage(
      [final List<Polygon> snapshots,
      final int activeSnapshotIndex]) = _$PolygonSnapshotsStorageImpl;

  @override
  List<Polygon> get snapshots;
  @override
  int get activeSnapshotIndex;
  @override
  @JsonKey(ignore: true)
  _$$PolygonSnapshotsStorageImplCopyWith<_$PolygonSnapshotsStorageImpl>
      get copyWith => throw _privateConstructorUsedError;
}
