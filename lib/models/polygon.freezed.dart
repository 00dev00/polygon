// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'polygon.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Polygon {
  List<Offset> get vertices => throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;
  int get draggedPointIndex => throw _privateConstructorUsedError;
  bool get attachedToGrid => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PolygonCopyWith<Polygon> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PolygonCopyWith<$Res> {
  factory $PolygonCopyWith(Polygon value, $Res Function(Polygon) then) =
      _$PolygonCopyWithImpl<$Res, Polygon>;
  @useResult
  $Res call(
      {List<Offset> vertices,
      bool isCompleted,
      int draggedPointIndex,
      bool attachedToGrid});
}

/// @nodoc
class _$PolygonCopyWithImpl<$Res, $Val extends Polygon>
    implements $PolygonCopyWith<$Res> {
  _$PolygonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vertices = null,
    Object? isCompleted = null,
    Object? draggedPointIndex = null,
    Object? attachedToGrid = null,
  }) {
    return _then(_value.copyWith(
      vertices: null == vertices
          ? _value.vertices
          : vertices // ignore: cast_nullable_to_non_nullable
              as List<Offset>,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      draggedPointIndex: null == draggedPointIndex
          ? _value.draggedPointIndex
          : draggedPointIndex // ignore: cast_nullable_to_non_nullable
              as int,
      attachedToGrid: null == attachedToGrid
          ? _value.attachedToGrid
          : attachedToGrid // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PolygonImplCopyWith<$Res> implements $PolygonCopyWith<$Res> {
  factory _$$PolygonImplCopyWith(
          _$PolygonImpl value, $Res Function(_$PolygonImpl) then) =
      __$$PolygonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Offset> vertices,
      bool isCompleted,
      int draggedPointIndex,
      bool attachedToGrid});
}

/// @nodoc
class __$$PolygonImplCopyWithImpl<$Res>
    extends _$PolygonCopyWithImpl<$Res, _$PolygonImpl>
    implements _$$PolygonImplCopyWith<$Res> {
  __$$PolygonImplCopyWithImpl(
      _$PolygonImpl _value, $Res Function(_$PolygonImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vertices = null,
    Object? isCompleted = null,
    Object? draggedPointIndex = null,
    Object? attachedToGrid = null,
  }) {
    return _then(_$PolygonImpl(
      vertices: null == vertices
          ? _value._vertices
          : vertices // ignore: cast_nullable_to_non_nullable
              as List<Offset>,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      draggedPointIndex: null == draggedPointIndex
          ? _value.draggedPointIndex
          : draggedPointIndex // ignore: cast_nullable_to_non_nullable
              as int,
      attachedToGrid: null == attachedToGrid
          ? _value.attachedToGrid
          : attachedToGrid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PolygonImpl implements _Polygon {
  const _$PolygonImpl(
      {final List<Offset> vertices = const [],
      this.isCompleted = false,
      this.draggedPointIndex = -1,
      this.attachedToGrid = false})
      : _vertices = vertices;

  final List<Offset> _vertices;
  @override
  @JsonKey()
  List<Offset> get vertices {
    if (_vertices is EqualUnmodifiableListView) return _vertices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_vertices);
  }

  @override
  @JsonKey()
  final bool isCompleted;
  @override
  @JsonKey()
  final int draggedPointIndex;
  @override
  @JsonKey()
  final bool attachedToGrid;

  @override
  String toString() {
    return 'Polygon(vertices: $vertices, isCompleted: $isCompleted, draggedPointIndex: $draggedPointIndex, attachedToGrid: $attachedToGrid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PolygonImpl &&
            const DeepCollectionEquality().equals(other._vertices, _vertices) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.draggedPointIndex, draggedPointIndex) ||
                other.draggedPointIndex == draggedPointIndex) &&
            (identical(other.attachedToGrid, attachedToGrid) ||
                other.attachedToGrid == attachedToGrid));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_vertices),
      isCompleted,
      draggedPointIndex,
      attachedToGrid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PolygonImplCopyWith<_$PolygonImpl> get copyWith =>
      __$$PolygonImplCopyWithImpl<_$PolygonImpl>(this, _$identity);
}

abstract class _Polygon implements Polygon {
  const factory _Polygon(
      {final List<Offset> vertices,
      final bool isCompleted,
      final int draggedPointIndex,
      final bool attachedToGrid}) = _$PolygonImpl;

  @override
  List<Offset> get vertices;
  @override
  bool get isCompleted;
  @override
  int get draggedPointIndex;
  @override
  bool get attachedToGrid;
  @override
  @JsonKey(ignore: true)
  _$$PolygonImplCopyWith<_$PolygonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
