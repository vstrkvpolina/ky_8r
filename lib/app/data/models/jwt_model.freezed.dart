// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jwt_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JWTModel _$JWTModelFromJson(Map<String, dynamic> json) {
  return _JWTModel.fromJson(json);
}

/// @nodoc
mixin _$JWTModel {
  String? get accessToken => throw _privateConstructorUsedError;
  String get refreshToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JWTModelCopyWith<JWTModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JWTModelCopyWith<$Res> {
  factory $JWTModelCopyWith(JWTModel value, $Res Function(JWTModel) then) =
      _$JWTModelCopyWithImpl<$Res, JWTModel>;
  @useResult
  $Res call({String? accessToken, String refreshToken});
}

/// @nodoc
class _$JWTModelCopyWithImpl<$Res, $Val extends JWTModel>
    implements $JWTModelCopyWith<$Res> {
  _$JWTModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = freezed,
    Object? refreshToken = null,
  }) {
    return _then(_value.copyWith(
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JWTModelImplCopyWith<$Res>
    implements $JWTModelCopyWith<$Res> {
  factory _$$JWTModelImplCopyWith(
          _$JWTModelImpl value, $Res Function(_$JWTModelImpl) then) =
      __$$JWTModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? accessToken, String refreshToken});
}

/// @nodoc
class __$$JWTModelImplCopyWithImpl<$Res>
    extends _$JWTModelCopyWithImpl<$Res, _$JWTModelImpl>
    implements _$$JWTModelImplCopyWith<$Res> {
  __$$JWTModelImplCopyWithImpl(
      _$JWTModelImpl _value, $Res Function(_$JWTModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = freezed,
    Object? refreshToken = null,
  }) {
    return _then(_$JWTModelImpl(
      freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JWTModelImpl implements _JWTModel {
  _$JWTModelImpl(this.accessToken, this.refreshToken);

  factory _$JWTModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$JWTModelImplFromJson(json);

  @override
  final String? accessToken;
  @override
  final String refreshToken;

  @override
  String toString() {
    return 'JWTModel(accessToken: $accessToken, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JWTModelImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, refreshToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JWTModelImplCopyWith<_$JWTModelImpl> get copyWith =>
      __$$JWTModelImplCopyWithImpl<_$JWTModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JWTModelImplToJson(
      this,
    );
  }
}

abstract class _JWTModel implements JWTModel {
  factory _JWTModel(final String? accessToken, final String refreshToken) =
      _$JWTModelImpl;

  factory _JWTModel.fromJson(Map<String, dynamic> json) =
      _$JWTModelImpl.fromJson;

  @override
  String? get accessToken;
  @override
  String get refreshToken;
  @override
  @JsonKey(ignore: true)
  _$$JWTModelImplCopyWith<_$JWTModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
