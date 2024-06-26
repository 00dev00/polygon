// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drawing_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$vertexInnerPaintHash() => r'647ffb1781b6e547e5733d80eb84e731c4904951';

/// See also [vertexInnerPaint].
@ProviderFor(vertexInnerPaint)
final vertexInnerPaintProvider = AutoDisposeProvider<Paint>.internal(
  vertexInnerPaint,
  name: r'vertexInnerPaintProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$vertexInnerPaintHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef VertexInnerPaintRef = AutoDisposeProviderRef<Paint>;
String _$vertexOuterPaintHash() => r'87a482e890bbca4fd64d26bc291dcf467bbf22e5';

/// See also [vertexOuterPaint].
@ProviderFor(vertexOuterPaint)
final vertexOuterPaintProvider = AutoDisposeProvider<Paint>.internal(
  vertexOuterPaint,
  name: r'vertexOuterPaintProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$vertexOuterPaintHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef VertexOuterPaintRef = AutoDisposeProviderRef<Paint>;
String _$strokePaintHash() => r'd1ba08e3b837784fb0d5b02facdc628a21968248';

/// See also [strokePaint].
@ProviderFor(strokePaint)
final strokePaintProvider = AutoDisposeProvider<Paint>.internal(
  strokePaint,
  name: r'strokePaintProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$strokePaintHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef StrokePaintRef = AutoDisposeProviderRef<Paint>;
String _$gridDotPaintHash() => r'2309d59d318fd0014907ab8287753d1d9e686d6d';

/// See also [gridDotPaint].
@ProviderFor(gridDotPaint)
final gridDotPaintProvider = AutoDisposeProvider<Paint>.internal(
  gridDotPaint,
  name: r'gridDotPaintProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$gridDotPaintHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GridDotPaintRef = AutoDisposeProviderRef<Paint>;
String _$gridMetadataNotifierHash() =>
    r'a696f706e439fae257d68dbaf5aea0ede5cb4c54';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$GridMetadataNotifier
    extends BuildlessAutoDisposeNotifier<GridMetadata> {
  late final double height;
  late final double width;

  GridMetadata build({
    required double height,
    required double width,
  });
}

/// See also [GridMetadataNotifier].
@ProviderFor(GridMetadataNotifier)
const gridMetadataNotifierProvider = GridMetadataNotifierFamily();

/// See also [GridMetadataNotifier].
class GridMetadataNotifierFamily extends Family<GridMetadata> {
  /// See also [GridMetadataNotifier].
  const GridMetadataNotifierFamily();

  /// See also [GridMetadataNotifier].
  GridMetadataNotifierProvider call({
    required double height,
    required double width,
  }) {
    return GridMetadataNotifierProvider(
      height: height,
      width: width,
    );
  }

  @override
  GridMetadataNotifierProvider getProviderOverride(
    covariant GridMetadataNotifierProvider provider,
  ) {
    return call(
      height: provider.height,
      width: provider.width,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'gridMetadataNotifierProvider';
}

/// See also [GridMetadataNotifier].
class GridMetadataNotifierProvider extends AutoDisposeNotifierProviderImpl<
    GridMetadataNotifier, GridMetadata> {
  /// See also [GridMetadataNotifier].
  GridMetadataNotifierProvider({
    required double height,
    required double width,
  }) : this._internal(
          () => GridMetadataNotifier()
            ..height = height
            ..width = width,
          from: gridMetadataNotifierProvider,
          name: r'gridMetadataNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$gridMetadataNotifierHash,
          dependencies: GridMetadataNotifierFamily._dependencies,
          allTransitiveDependencies:
              GridMetadataNotifierFamily._allTransitiveDependencies,
          height: height,
          width: width,
        );

  GridMetadataNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.height,
    required this.width,
  }) : super.internal();

  final double height;
  final double width;

  @override
  GridMetadata runNotifierBuild(
    covariant GridMetadataNotifier notifier,
  ) {
    return notifier.build(
      height: height,
      width: width,
    );
  }

  @override
  Override overrideWith(GridMetadataNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: GridMetadataNotifierProvider._internal(
        () => create()
          ..height = height
          ..width = width,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        height: height,
        width: width,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<GridMetadataNotifier, GridMetadata>
      createElement() {
    return _GridMetadataNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GridMetadataNotifierProvider &&
        other.height == height &&
        other.width == width;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, height.hashCode);
    hash = _SystemHash.combine(hash, width.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GridMetadataNotifierRef on AutoDisposeNotifierProviderRef<GridMetadata> {
  /// The parameter `height` of this provider.
  double get height;

  /// The parameter `width` of this provider.
  double get width;
}

class _GridMetadataNotifierProviderElement
    extends AutoDisposeNotifierProviderElement<GridMetadataNotifier,
        GridMetadata> with GridMetadataNotifierRef {
  _GridMetadataNotifierProviderElement(super.provider);

  @override
  double get height => (origin as GridMetadataNotifierProvider).height;
  @override
  double get width => (origin as GridMetadataNotifierProvider).width;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
