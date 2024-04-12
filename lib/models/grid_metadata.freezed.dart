// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'grid_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GridMetadata {
  dynamic get width => throw _privateConstructorUsedError;
  dynamic get height => throw _privateConstructorUsedError;
  dynamic get dotRadius => throw _privateConstructorUsedError;
  dynamic get cellSize => throw _privateConstructorUsedError;
  List<Offset> get generatedDots => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GridMetadataCopyWith<GridMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GridMetadataCopyWith<$Res> {
  factory $GridMetadataCopyWith(
          GridMetadata value, $Res Function(GridMetadata) then) =
      _$GridMetadataCopyWithImpl<$Res, GridMetadata>;
  @useResult
  $Res call(
      {dynamic width,
      dynamic height,
      dynamic dotRadius,
      dynamic cellSize,
      List<Offset> generatedDots});
}

/// @nodoc
class _$GridMetadataCopyWithImpl<$Res, $Val extends GridMetadata>
    implements $GridMetadataCopyWith<$Res> {
  _$GridMetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = freezed,
    Object? height = freezed,
    Object? dotRadius = freezed,
    Object? cellSize = freezed,
    Object? generatedDots = null,
  }) {
    return _then(_value.copyWith(
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as dynamic,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as dynamic,
      dotRadius: freezed == dotRadius
          ? _value.dotRadius
          : dotRadius // ignore: cast_nullable_to_non_nullable
              as dynamic,
      cellSize: freezed == cellSize
          ? _value.cellSize
          : cellSize // ignore: cast_nullable_to_non_nullable
              as dynamic,
      generatedDots: null == generatedDots
          ? _value.generatedDots
          : generatedDots // ignore: cast_nullable_to_non_nullable
              as List<Offset>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GridMetadataImplCopyWith<$Res>
    implements $GridMetadataCopyWith<$Res> {
  factory _$$GridMetadataImplCopyWith(
          _$GridMetadataImpl value, $Res Function(_$GridMetadataImpl) then) =
      __$$GridMetadataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic width,
      dynamic height,
      dynamic dotRadius,
      dynamic cellSize,
      List<Offset> generatedDots});
}

/// @nodoc
class __$$GridMetadataImplCopyWithImpl<$Res>
    extends _$GridMetadataCopyWithImpl<$Res, _$GridMetadataImpl>
    implements _$$GridMetadataImplCopyWith<$Res> {
  __$$GridMetadataImplCopyWithImpl(
      _$GridMetadataImpl _value, $Res Function(_$GridMetadataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = freezed,
    Object? height = freezed,
    Object? dotRadius = freezed,
    Object? cellSize = freezed,
    Object? generatedDots = null,
  }) {
    return _then(_$GridMetadataImpl(
      width: freezed == width ? _value.width! : width,
      height: freezed == height ? _value.height! : height,
      dotRadius: freezed == dotRadius ? _value.dotRadius! : dotRadius,
      cellSize: freezed == cellSize ? _value.cellSize! : cellSize,
      generatedDots: null == generatedDots
          ? _value._generatedDots
          : generatedDots // ignore: cast_nullable_to_non_nullable
              as List<Offset>,
    ));
  }
}

/// @nodoc

class _$GridMetadataImpl implements _GridMetadata {
  const _$GridMetadataImpl(
      {this.width = 5000,
      this.height = 5000,
      this.dotRadius = 2,
      this.cellSize = 40,
      final List<Offset> generatedDots = const []})
      : _generatedDots = generatedDots;

  @override
  @JsonKey()
  final dynamic width;
  @override
  @JsonKey()
  final dynamic height;
  @override
  @JsonKey()
  final dynamic dotRadius;
  @override
  @JsonKey()
  final dynamic cellSize;
  final List<Offset> _generatedDots;
  @override
  @JsonKey()
  List<Offset> get generatedDots {
    if (_generatedDots is EqualUnmodifiableListView) return _generatedDots;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_generatedDots);
  }

  @override
  String toString() {
    return 'GridMetadata(width: $width, height: $height, dotRadius: $dotRadius, cellSize: $cellSize, generatedDots: $generatedDots)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GridMetadataImpl &&
            const DeepCollectionEquality().equals(other.width, width) &&
            const DeepCollectionEquality().equals(other.height, height) &&
            const DeepCollectionEquality().equals(other.dotRadius, dotRadius) &&
            const DeepCollectionEquality().equals(other.cellSize, cellSize) &&
            const DeepCollectionEquality()
                .equals(other._generatedDots, _generatedDots));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(width),
      const DeepCollectionEquality().hash(height),
      const DeepCollectionEquality().hash(dotRadius),
      const DeepCollectionEquality().hash(cellSize),
      const DeepCollectionEquality().hash(_generatedDots));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GridMetadataImplCopyWith<_$GridMetadataImpl> get copyWith =>
      __$$GridMetadataImplCopyWithImpl<_$GridMetadataImpl>(this, _$identity);
}

abstract class _GridMetadata implements GridMetadata {
  const factory _GridMetadata(
      {final dynamic width,
      final dynamic height,
      final dynamic dotRadius,
      final dynamic cellSize,
      final List<Offset> generatedDots}) = _$GridMetadataImpl;

  @override
  dynamic get width;
  @override
  dynamic get height;
  @override
  dynamic get dotRadius;
  @override
  dynamic get cellSize;
  @override
  List<Offset> get generatedDots;
  @override
  @JsonKey(ignore: true)
  _$$GridMetadataImplCopyWith<_$GridMetadataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
