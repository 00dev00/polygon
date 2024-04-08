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
  dynamic get maxWidth => throw _privateConstructorUsedError;
  dynamic get maxHeight => throw _privateConstructorUsedError;
  dynamic get dotRadius => throw _privateConstructorUsedError;
  dynamic get cellSize => throw _privateConstructorUsedError;
  List<Offset> get generatedDots => throw _privateConstructorUsedError;
  bool get attachMode => throw _privateConstructorUsedError;

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
      {dynamic maxWidth,
      dynamic maxHeight,
      dynamic dotRadius,
      dynamic cellSize,
      List<Offset> generatedDots,
      bool attachMode});
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
    Object? maxWidth = freezed,
    Object? maxHeight = freezed,
    Object? dotRadius = freezed,
    Object? cellSize = freezed,
    Object? generatedDots = null,
    Object? attachMode = null,
  }) {
    return _then(_value.copyWith(
      maxWidth: freezed == maxWidth
          ? _value.maxWidth
          : maxWidth // ignore: cast_nullable_to_non_nullable
              as dynamic,
      maxHeight: freezed == maxHeight
          ? _value.maxHeight
          : maxHeight // ignore: cast_nullable_to_non_nullable
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
      attachMode: null == attachMode
          ? _value.attachMode
          : attachMode // ignore: cast_nullable_to_non_nullable
              as bool,
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
      {dynamic maxWidth,
      dynamic maxHeight,
      dynamic dotRadius,
      dynamic cellSize,
      List<Offset> generatedDots,
      bool attachMode});
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
    Object? maxWidth = freezed,
    Object? maxHeight = freezed,
    Object? dotRadius = freezed,
    Object? cellSize = freezed,
    Object? generatedDots = null,
    Object? attachMode = null,
  }) {
    return _then(_$GridMetadataImpl(
      maxWidth: freezed == maxWidth ? _value.maxWidth! : maxWidth,
      maxHeight: freezed == maxHeight ? _value.maxHeight! : maxHeight,
      dotRadius: freezed == dotRadius ? _value.dotRadius! : dotRadius,
      cellSize: freezed == cellSize ? _value.cellSize! : cellSize,
      generatedDots: null == generatedDots
          ? _value._generatedDots
          : generatedDots // ignore: cast_nullable_to_non_nullable
              as List<Offset>,
      attachMode: null == attachMode
          ? _value.attachMode
          : attachMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GridMetadataImpl implements _GridMetadata {
  const _$GridMetadataImpl(
      {this.maxWidth = 5000,
      this.maxHeight = 5000,
      this.dotRadius = 2,
      this.cellSize = 40,
      final List<Offset> generatedDots = const [],
      this.attachMode = false})
      : _generatedDots = generatedDots;

  @override
  @JsonKey()
  final dynamic maxWidth;
  @override
  @JsonKey()
  final dynamic maxHeight;
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
  @JsonKey()
  final bool attachMode;

  @override
  String toString() {
    return 'GridMetadata(maxWidth: $maxWidth, maxHeight: $maxHeight, dotRadius: $dotRadius, cellSize: $cellSize, generatedDots: $generatedDots, attachMode: $attachMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GridMetadataImpl &&
            const DeepCollectionEquality().equals(other.maxWidth, maxWidth) &&
            const DeepCollectionEquality().equals(other.maxHeight, maxHeight) &&
            const DeepCollectionEquality().equals(other.dotRadius, dotRadius) &&
            const DeepCollectionEquality().equals(other.cellSize, cellSize) &&
            const DeepCollectionEquality()
                .equals(other._generatedDots, _generatedDots) &&
            (identical(other.attachMode, attachMode) ||
                other.attachMode == attachMode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(maxWidth),
      const DeepCollectionEquality().hash(maxHeight),
      const DeepCollectionEquality().hash(dotRadius),
      const DeepCollectionEquality().hash(cellSize),
      const DeepCollectionEquality().hash(_generatedDots),
      attachMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GridMetadataImplCopyWith<_$GridMetadataImpl> get copyWith =>
      __$$GridMetadataImplCopyWithImpl<_$GridMetadataImpl>(this, _$identity);
}

abstract class _GridMetadata implements GridMetadata {
  const factory _GridMetadata(
      {final dynamic maxWidth,
      final dynamic maxHeight,
      final dynamic dotRadius,
      final dynamic cellSize,
      final List<Offset> generatedDots,
      final bool attachMode}) = _$GridMetadataImpl;

  @override
  dynamic get maxWidth;
  @override
  dynamic get maxHeight;
  @override
  dynamic get dotRadius;
  @override
  dynamic get cellSize;
  @override
  List<Offset> get generatedDots;
  @override
  bool get attachMode;
  @override
  @JsonKey(ignore: true)
  _$$GridMetadataImplCopyWith<_$GridMetadataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
