// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sources_respositiory.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$sourcesRepositoryHash() => r'd9c7cb69dbe724d263a337f0697b44cbb766f1c5';

/// See also [sourcesRepository].
@ProviderFor(sourcesRepository)
final sourcesRepositoryProvider =
    AutoDisposeProvider<SourcesRepository>.internal(
  sourcesRepository,
  name: r'sourcesRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$sourcesRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SourcesRepositoryRef = AutoDisposeProviderRef<SourcesRepository>;
String _$getSourcesHash() => r'96c856abaa8932dbae1e1cf4a89f527cd517cb59';

/// See also [getSources].
@ProviderFor(getSources)
final getSourcesProvider = AutoDisposeFutureProvider<SourceResponse>.internal(
  getSources,
  name: r'getSourcesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getSourcesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetSourcesRef = AutoDisposeFutureProviderRef<SourceResponse>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
