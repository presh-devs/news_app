// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'webview_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$webviewControllerHash() => r'877fef1b067b47d9be3898763df3d9642c898797';

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

/// See also [webviewController].
@ProviderFor(webviewController)
const webviewControllerProvider = WebviewControllerFamily();

/// See also [webviewController].
class WebviewControllerFamily extends Family<WebViewController> {
  /// See also [webviewController].
  const WebviewControllerFamily();

  /// See also [webviewController].
  WebviewControllerProvider call({
    required String url,
  }) {
    return WebviewControllerProvider(
      url: url,
    );
  }

  @override
  WebviewControllerProvider getProviderOverride(
    covariant WebviewControllerProvider provider,
  ) {
    return call(
      url: provider.url,
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
  String? get name => r'webviewControllerProvider';
}

/// See also [webviewController].
class WebviewControllerProvider extends AutoDisposeProvider<WebViewController> {
  /// See also [webviewController].
  WebviewControllerProvider({
    required String url,
  }) : this._internal(
          (ref) => webviewController(
            ref as WebviewControllerRef,
            url: url,
          ),
          from: webviewControllerProvider,
          name: r'webviewControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$webviewControllerHash,
          dependencies: WebviewControllerFamily._dependencies,
          allTransitiveDependencies:
              WebviewControllerFamily._allTransitiveDependencies,
          url: url,
        );

  WebviewControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.url,
  }) : super.internal();

  final String url;

  @override
  Override overrideWith(
    WebViewController Function(WebviewControllerRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: WebviewControllerProvider._internal(
        (ref) => create(ref as WebviewControllerRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        url: url,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<WebViewController> createElement() {
    return _WebviewControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is WebviewControllerProvider && other.url == url;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, url.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin WebviewControllerRef on AutoDisposeProviderRef<WebViewController> {
  /// The parameter `url` of this provider.
  String get url;
}

class _WebviewControllerProviderElement
    extends AutoDisposeProviderElement<WebViewController>
    with WebviewControllerRef {
  _WebviewControllerProviderElement(super.provider);

  @override
  String get url => (origin as WebviewControllerProvider).url;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
