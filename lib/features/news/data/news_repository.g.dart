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
String _$fetchAllNewsHash() => r'795c981056ec575756722db3467915826489497b';

/// See also [fetchAllNews].
@ProviderFor(fetchAllNews)
final fetchAllNewsProvider = AutoDisposeFutureProvider<NewsResponse>.internal(
  fetchAllNews,
  name: r'fetchAllNewsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$fetchAllNewsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FetchAllNewsRef = AutoDisposeFutureProviderRef<NewsResponse>;
String _$fetchHeadlinesNewsHash() =>
    r'7a3f3fe36cb1b30ae6a5b489a453fbff725f4c5c';

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
  }) {
    return FetchHeadlinesNewsProvider(
      category: category,
      country: country,
    );
  }

  @override
  FetchHeadlinesNewsProvider getProviderOverride(
    covariant FetchHeadlinesNewsProvider provider,
  ) {
    return call(
      category: provider.category,
      country: provider.country,
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
  }) : this._internal(
          (ref) => fetchHeadlinesNews(
            ref as FetchHeadlinesNewsRef,
            category: category,
            country: country,
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
  }) : super.internal();

  final String? category;
  final String? country;

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
        other.country == country;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, category.hashCode);
    hash = _SystemHash.combine(hash, country.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchHeadlinesNewsRef on AutoDisposeFutureProviderRef<NewsResponse> {
  /// The parameter `category` of this provider.
  String? get category;

  /// The parameter `country` of this provider.
  String? get country;
}

class _FetchHeadlinesNewsProviderElement
    extends AutoDisposeFutureProviderElement<NewsResponse>
    with FetchHeadlinesNewsRef {
  _FetchHeadlinesNewsProviderElement(super.provider);

  @override
  String? get category => (origin as FetchHeadlinesNewsProvider).category;
  @override
  String? get country => (origin as FetchHeadlinesNewsProvider).country;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
