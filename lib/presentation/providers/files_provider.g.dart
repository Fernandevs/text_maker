// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'files_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$filesHash() => r'e1574aeaf348e325197702574be81ac907ac631f';

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

abstract class _$Files extends BuildlessNotifier<DocumentModel> {
  late final String title;

  DocumentModel build({
    String title = '',
  });
}

/// See also [Files].
@ProviderFor(Files)
const filesProvider = FilesFamily();

/// See also [Files].
class FilesFamily extends Family<DocumentModel> {
  /// See also [Files].
  const FilesFamily();

  /// See also [Files].
  FilesProvider call({
    String title = '',
  }) {
    return FilesProvider(
      title: title,
    );
  }

  @override
  FilesProvider getProviderOverride(
    covariant FilesProvider provider,
  ) {
    return call(
      title: provider.title,
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
  String? get name => r'filesProvider';
}

/// See also [Files].
class FilesProvider extends NotifierProviderImpl<Files, DocumentModel> {
  /// See also [Files].
  FilesProvider({
    String title = '',
  }) : this._internal(
          () => Files()..title = title,
          from: filesProvider,
          name: r'filesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$filesHash,
          dependencies: FilesFamily._dependencies,
          allTransitiveDependencies: FilesFamily._allTransitiveDependencies,
          title: title,
        );

  FilesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.title,
  }) : super.internal();

  final String title;

  @override
  DocumentModel runNotifierBuild(
    covariant Files notifier,
  ) {
    return notifier.build(
      title: title,
    );
  }

  @override
  Override overrideWith(Files Function() create) {
    return ProviderOverride(
      origin: this,
      override: FilesProvider._internal(
        () => create()..title = title,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        title: title,
      ),
    );
  }

  @override
  NotifierProviderElement<Files, DocumentModel> createElement() {
    return _FilesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FilesProvider && other.title == title;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, title.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FilesRef on NotifierProviderRef<DocumentModel> {
  /// The parameter `title` of this provider.
  String get title;
}

class _FilesProviderElement
    extends NotifierProviderElement<Files, DocumentModel> with FilesRef {
  _FilesProviderElement(super.provider);

  @override
  String get title => (origin as FilesProvider).title;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
