// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sources.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Sources _$SourcesFromJson(Map<String, dynamic> json) {
  return _Sources.fromJson(json);
}

/// @nodoc
mixin _$Sources {
  String? get id => throw _privateConstructorUsedError;
  dynamic get name => throw _privateConstructorUsedError;
  dynamic get description => throw _privateConstructorUsedError;
  dynamic get url => throw _privateConstructorUsedError;
  dynamic get category => throw _privateConstructorUsedError;
  dynamic get us => throw _privateConstructorUsedError;
  dynamic get language => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SourcesCopyWith<Sources> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SourcesCopyWith<$Res> {
  factory $SourcesCopyWith(Sources value, $Res Function(Sources) then) =
      _$SourcesCopyWithImpl<$Res, Sources>;
  @useResult
  $Res call(
      {String? id,
      dynamic name,
      dynamic description,
      dynamic url,
      dynamic category,
      dynamic us,
      dynamic language});
}

/// @nodoc
class _$SourcesCopyWithImpl<$Res, $Val extends Sources>
    implements $SourcesCopyWith<$Res> {
  _$SourcesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? url = freezed,
    Object? category = freezed,
    Object? us = freezed,
    Object? language = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as dynamic,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as dynamic,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as dynamic,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as dynamic,
      us: freezed == us
          ? _value.us
          : us // ignore: cast_nullable_to_non_nullable
              as dynamic,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SourcesImplCopyWith<$Res> implements $SourcesCopyWith<$Res> {
  factory _$$SourcesImplCopyWith(
          _$SourcesImpl value, $Res Function(_$SourcesImpl) then) =
      __$$SourcesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      dynamic name,
      dynamic description,
      dynamic url,
      dynamic category,
      dynamic us,
      dynamic language});
}

/// @nodoc
class __$$SourcesImplCopyWithImpl<$Res>
    extends _$SourcesCopyWithImpl<$Res, _$SourcesImpl>
    implements _$$SourcesImplCopyWith<$Res> {
  __$$SourcesImplCopyWithImpl(
      _$SourcesImpl _value, $Res Function(_$SourcesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? url = freezed,
    Object? category = freezed,
    Object? us = freezed,
    Object? language = freezed,
  }) {
    return _then(_$SourcesImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name ? _value.name! : name,
      description: freezed == description ? _value.description! : description,
      url: freezed == url ? _value.url! : url,
      category: freezed == category ? _value.category! : category,
      us: freezed == us ? _value.us! : us,
      language: freezed == language ? _value.language! : language,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SourcesImpl implements _Sources {
  _$SourcesImpl(
      {required this.id,
      this.name,
      this.description,
      this.url,
      this.category,
      this.us,
      this.language});

  factory _$SourcesImpl.fromJson(Map<String, dynamic> json) =>
      _$$SourcesImplFromJson(json);

  @override
  final String? id;
  @override
  final dynamic name;
  @override
  final dynamic description;
  @override
  final dynamic url;
  @override
  final dynamic category;
  @override
  final dynamic us;
  @override
  final dynamic language;

  @override
  String toString() {
    return 'Sources(id: $id, name: $name, description: $description, url: $url, category: $category, us: $us, language: $language)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SourcesImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality().equals(other.us, us) &&
            const DeepCollectionEquality().equals(other.language, language));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(us),
      const DeepCollectionEquality().hash(language));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SourcesImplCopyWith<_$SourcesImpl> get copyWith =>
      __$$SourcesImplCopyWithImpl<_$SourcesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SourcesImplToJson(
      this,
    );
  }
}

abstract class _Sources implements Sources {
  factory _Sources(
      {required final String? id,
      final dynamic name,
      final dynamic description,
      final dynamic url,
      final dynamic category,
      final dynamic us,
      final dynamic language}) = _$SourcesImpl;

  factory _Sources.fromJson(Map<String, dynamic> json) = _$SourcesImpl.fromJson;

  @override
  String? get id;
  @override
  dynamic get name;
  @override
  dynamic get description;
  @override
  dynamic get url;
  @override
  dynamic get category;
  @override
  dynamic get us;
  @override
  dynamic get language;
  @override
  @JsonKey(ignore: true)
  _$$SourcesImplCopyWith<_$SourcesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
