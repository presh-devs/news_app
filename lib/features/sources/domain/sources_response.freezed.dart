// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sources_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SourceResponse _$SourceResponseFromJson(Map<String, dynamic> json) {
  return _SourceResponse.fromJson(json);
}

/// @nodoc
mixin _$SourceResponse {
  List<Sources> get sources => throw _privateConstructorUsedError;
  List<String> get errors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SourceResponseCopyWith<SourceResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SourceResponseCopyWith<$Res> {
  factory $SourceResponseCopyWith(
          SourceResponse value, $Res Function(SourceResponse) then) =
      _$SourceResponseCopyWithImpl<$Res, SourceResponse>;
  @useResult
  $Res call({List<Sources> sources, List<String> errors});
}

/// @nodoc
class _$SourceResponseCopyWithImpl<$Res, $Val extends SourceResponse>
    implements $SourceResponseCopyWith<$Res> {
  _$SourceResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sources = null,
    Object? errors = null,
  }) {
    return _then(_value.copyWith(
      sources: null == sources
          ? _value.sources
          : sources // ignore: cast_nullable_to_non_nullable
              as List<Sources>,
      errors: null == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SourceResponseImplCopyWith<$Res>
    implements $SourceResponseCopyWith<$Res> {
  factory _$$SourceResponseImplCopyWith(_$SourceResponseImpl value,
          $Res Function(_$SourceResponseImpl) then) =
      __$$SourceResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Sources> sources, List<String> errors});
}

/// @nodoc
class __$$SourceResponseImplCopyWithImpl<$Res>
    extends _$SourceResponseCopyWithImpl<$Res, _$SourceResponseImpl>
    implements _$$SourceResponseImplCopyWith<$Res> {
  __$$SourceResponseImplCopyWithImpl(
      _$SourceResponseImpl _value, $Res Function(_$SourceResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sources = null,
    Object? errors = null,
  }) {
    return _then(_$SourceResponseImpl(
      sources: null == sources
          ? _value._sources
          : sources // ignore: cast_nullable_to_non_nullable
              as List<Sources>,
      errors: null == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SourceResponseImpl implements _SourceResponse {
  _$SourceResponseImpl(
      {required final List<Sources> sources,
      final List<String> errors = const []})
      : _sources = sources,
        _errors = errors;

  factory _$SourceResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SourceResponseImplFromJson(json);

  final List<Sources> _sources;
  @override
  List<Sources> get sources {
    if (_sources is EqualUnmodifiableListView) return _sources;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sources);
  }

  final List<String> _errors;
  @override
  @JsonKey()
  List<String> get errors {
    if (_errors is EqualUnmodifiableListView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_errors);
  }

  @override
  String toString() {
    return 'SourceResponse(sources: $sources, errors: $errors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SourceResponseImpl &&
            const DeepCollectionEquality().equals(other._sources, _sources) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_sources),
      const DeepCollectionEquality().hash(_errors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SourceResponseImplCopyWith<_$SourceResponseImpl> get copyWith =>
      __$$SourceResponseImplCopyWithImpl<_$SourceResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SourceResponseImplToJson(
      this,
    );
  }
}

abstract class _SourceResponse implements SourceResponse {
  factory _SourceResponse(
      {required final List<Sources> sources,
      final List<String> errors}) = _$SourceResponseImpl;

  factory _SourceResponse.fromJson(Map<String, dynamic> json) =
      _$SourceResponseImpl.fromJson;

  @override
  List<Sources> get sources;
  @override
  List<String> get errors;
  @override
  @JsonKey(ignore: true)
  _$$SourceResponseImplCopyWith<_$SourceResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
