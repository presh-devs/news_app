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
String _$fetchNewsHash() => r'a17800aa05a357fb7ec600ff2f88656c9ab0e224';

/// See also [fetchNews].
@ProviderFor(fetchNews)
final fetchNewsProvider = AutoDisposeFutureProvider<NewsResponse>.internal(
  fetchNews,
  name: r'fetchNewsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$fetchNewsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FetchNewsRef = AutoDisposeFutureProviderRef<NewsResponse>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
