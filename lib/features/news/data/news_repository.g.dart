// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$newsRepositoryHash() => r'750af4d11d8b90883fd33a8bbb85b9273ec59e66';

/// See also [newsRepository].
@ProviderFor(newsRepository)
final newsRepositoryProvider = AutoDisposeProvider<NewsRepository>.internal(
  newsRepository,
  name: r'newsRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$newsRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef NewsRepositoryRef = AutoDisposeProviderRef<NewsRepository>;
String _$fetchAllNewsHash() => r'3f419eacd6e597d23fbbda93f2d24424222a1fc8';

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

/// See also [fetchAllNews].
@ProviderFor(fetchAllNews)
const fetchAllNewsProvider = FetchAllNewsFamily();

/// See also [fetchAllNews].
class FetchAllNewsFamily extends Family<AsyncValue<NewsResponse>> {
  /// See also [fetchAllNews].
  const FetchAllNewsFamily();

  /// See also [fetchAllNews].
  FetchAllNewsProvider call({
    int? page,
  }) {
    return FetchAllNewsProvider(
      page: page,
    );
  }

  @override
  FetchAllNewsProvider getProviderOverride(
    covariant FetchAllNewsProvider provider,
  ) {
    return call(
      page: provider.page,
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
  String? get name => r'fetchAllNewsProvider';
}

/// See also [fetchAllNews].
class FetchAllNewsProvider extends AutoDisposeFutureProvider<NewsResponse> {
  /// See also [fetchAllNews].
  FetchAllNewsProvider({
    int? page,
  }) : this._internal(
          (ref) => fetchAllNews(
            ref as FetchAllNewsRef,
            page: page,
          ),
          from: fetchAllNewsProvider,
          name: r'fetchAllNewsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchAllNewsHash,
          dependencies: FetchAllNewsFamily._dependencies,
          allTransitiveDependencies:
              FetchAllNewsFamily._allTransitiveDependencies,
          page: page,
        );

  FetchAllNewsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.page,
  }) : super.internal();

  final int? page;

  @override
  Override overrideWith(
    FutureOr<NewsResponse> Function(FetchAllNewsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchAllNewsProvider._internal(
        (ref) => create(ref as FetchAllNewsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        page: page,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<NewsResponse> createElement() {
    return _FetchAllNewsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchAllNewsProvider && other.page == page;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchAllNewsRef on AutoDisposeFutureProviderRef<NewsResponse> {
  /// The parameter `page` of this provider.
  int? get page;
}

class _FetchAllNewsProviderElement
    extends AutoDisposeFutureProviderElement<NewsResponse>
    with FetchAllNewsRef {
  _FetchAllNewsProviderElement(super.provider);

  @override
  int? get page => (origin as FetchAllNewsProvider).page;
}

String _$fetchHeadlinesNewsHash() =>
    r'fbeab3724efe0b8fa048ddd6a2651ddfd6776e19';

/// See also [fetchHeadlinesNews].
@ProviderFor(fetchHeadlinesNews)
const fetchHeadlinesNewsProvider = FetchHeadlinesNewsFamily();

/// See also [fetchHeadlinesNews].
class FetchHeadlinesNewsFamily extends Family<AsyncValue<NewsResponse>> {
  /// See also [fetchHeadlinesNews].
  const FetchHeadlinesNewsFamily();

  /// See also [fetchHeadlinesNews].
  FetchHeadlinesNewsProvider call({
    String? category,
    String? country,
    int? page,
  }) {
    return FetchHeadlinesNewsProvider(
      category: category,
      country: country,
      page: page,
    );
  }

  @override
  FetchHeadlinesNewsProvider getProviderOverride(
    covariant FetchHeadlinesNewsProvider provider,
  ) {
    return call(
      category: provider.category,
      country: provider.country,
      page: provider.page,
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
  String? get name => r'fetchHeadlinesNewsProvider';
}

/// See also [fetchHeadlinesNews].
class FetchHeadlinesNewsProvider
    extends AutoDisposeFutureProvider<NewsResponse> {
  /// See also [fetchHeadlinesNews].
  FetchHeadlinesNewsProvider({
    String? category,
    String? country,
    int? page,
  }) : this._internal(
          (ref) => fetchHeadlinesNews(
            ref as FetchHeadlinesNewsRef,
            category: category,
            country: country,
            page: page,
          ),
          from: fetchHeadlinesNewsProvider,
          name: r'fetchHeadlinesNewsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchHeadlinesNewsHash,
          dependencies: FetchHeadlinesNewsFamily._dependencies,
          allTransitiveDependencies:
              FetchHeadlinesNewsFamily._allTransitiveDependencies,
          category: category,
          country: country,
          page: page,
        );

  FetchHeadlinesNewsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.category,
    required this.country,
    required this.page,
  }) : super.internal();

  final String? category;
  final String? country;
  final int? page;

  @override
  Override overrideWith(
    FutureOr<NewsResponse> Function(FetchHeadlinesNewsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchHeadlinesNewsProvider._internal(
        (ref) => create(ref as FetchHeadlinesNewsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        category: category,
        country: country,
        page: page,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<NewsResponse> createElement() {
    return _FetchHeadlinesNewsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchHeadlinesNewsProvider &&
        other.category == category &&
        other.country == country &&
        other.page == page;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, category.hashCode);
    hash = _SystemHash.combine(hash, country.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchHeadlinesNewsRef on AutoDisposeFutureProviderRef<NewsResponse> {
  /// The parameter `category` of this provider.
  String? get category;

  /// The parameter `country` of this provider.
  String? get country;

  /// The parameter `page` of this provider.
  int? get page;
}

class _FetchHeadlinesNewsProviderElement
    extends AutoDisposeFutureProviderElement<NewsResponse>
    with FetchHeadlinesNewsRef {
  _FetchHeadlinesNewsProviderElement(super.provider);

  @override
  String? get category => (origin as FetchHeadlinesNewsProvider).category;
  @override
  String? get country => (origin as FetchHeadlinesNewsProvider).country;
  @override
  int? get page => (origin as FetchHeadlinesNewsProvider).page;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
