// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'engine_info_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EngineInfoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(EngineInfo? engineInfo) getEngineInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(EngineInfo? engineInfo)? getEngineInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(EngineInfo? engineInfo)? getEngineInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(GetEngineInfo value) getEngineInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
    TResult? Function(GetEngineInfo value)? getEngineInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(GetEngineInfo value)? getEngineInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EngineInfoStateCopyWith<$Res> {
  factory $EngineInfoStateCopyWith(
          EngineInfoState value, $Res Function(EngineInfoState) then) =
      _$EngineInfoStateCopyWithImpl<$Res, EngineInfoState>;
}

/// @nodoc
class _$EngineInfoStateCopyWithImpl<$Res, $Val extends EngineInfoState>
    implements $EngineInfoStateCopyWith<$Res> {
  _$EngineInfoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitializeImplCopyWith<$Res> {
  factory _$$InitializeImplCopyWith(
          _$InitializeImpl value, $Res Function(_$InitializeImpl) then) =
      __$$InitializeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializeImplCopyWithImpl<$Res>
    extends _$EngineInfoStateCopyWithImpl<$Res, _$InitializeImpl>
    implements _$$InitializeImplCopyWith<$Res> {
  __$$InitializeImplCopyWithImpl(
      _$InitializeImpl _value, $Res Function(_$InitializeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitializeImpl implements Initialize {
  const _$InitializeImpl();

  @override
  String toString() {
    return 'EngineInfoState.initialize()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitializeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(EngineInfo? engineInfo) getEngineInfo,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(EngineInfo? engineInfo)? getEngineInfo,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(EngineInfo? engineInfo)? getEngineInfo,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(GetEngineInfo value) getEngineInfo,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
    TResult? Function(GetEngineInfo value)? getEngineInfo,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(GetEngineInfo value)? getEngineInfo,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class Initialize implements EngineInfoState {
  const factory Initialize() = _$InitializeImpl;
}

/// @nodoc
abstract class _$$GetEngineInfoImplCopyWith<$Res> {
  factory _$$GetEngineInfoImplCopyWith(
          _$GetEngineInfoImpl value, $Res Function(_$GetEngineInfoImpl) then) =
      __$$GetEngineInfoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EngineInfo? engineInfo});

  $EngineInfoCopyWith<$Res>? get engineInfo;
}

/// @nodoc
class __$$GetEngineInfoImplCopyWithImpl<$Res>
    extends _$EngineInfoStateCopyWithImpl<$Res, _$GetEngineInfoImpl>
    implements _$$GetEngineInfoImplCopyWith<$Res> {
  __$$GetEngineInfoImplCopyWithImpl(
      _$GetEngineInfoImpl _value, $Res Function(_$GetEngineInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? engineInfo = freezed,
  }) {
    return _then(_$GetEngineInfoImpl(
      engineInfo: freezed == engineInfo
          ? _value.engineInfo
          : engineInfo // ignore: cast_nullable_to_non_nullable
              as EngineInfo?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $EngineInfoCopyWith<$Res>? get engineInfo {
    if (_value.engineInfo == null) {
      return null;
    }

    return $EngineInfoCopyWith<$Res>(_value.engineInfo!, (value) {
      return _then(_value.copyWith(engineInfo: value));
    });
  }
}

/// @nodoc

class _$GetEngineInfoImpl implements GetEngineInfo {
  const _$GetEngineInfoImpl({this.engineInfo = null});

  @override
  @JsonKey()
  final EngineInfo? engineInfo;

  @override
  String toString() {
    return 'EngineInfoState.getEngineInfo(engineInfo: $engineInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetEngineInfoImpl &&
            (identical(other.engineInfo, engineInfo) ||
                other.engineInfo == engineInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, engineInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetEngineInfoImplCopyWith<_$GetEngineInfoImpl> get copyWith =>
      __$$GetEngineInfoImplCopyWithImpl<_$GetEngineInfoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(EngineInfo? engineInfo) getEngineInfo,
  }) {
    return getEngineInfo(engineInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(EngineInfo? engineInfo)? getEngineInfo,
  }) {
    return getEngineInfo?.call(engineInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(EngineInfo? engineInfo)? getEngineInfo,
    required TResult orElse(),
  }) {
    if (getEngineInfo != null) {
      return getEngineInfo(engineInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(GetEngineInfo value) getEngineInfo,
  }) {
    return getEngineInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
    TResult? Function(GetEngineInfo value)? getEngineInfo,
  }) {
    return getEngineInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(GetEngineInfo value)? getEngineInfo,
    required TResult orElse(),
  }) {
    if (getEngineInfo != null) {
      return getEngineInfo(this);
    }
    return orElse();
  }
}

abstract class GetEngineInfo implements EngineInfoState {
  const factory GetEngineInfo({final EngineInfo? engineInfo}) =
      _$GetEngineInfoImpl;

  EngineInfo? get engineInfo;
  @JsonKey(ignore: true)
  _$$GetEngineInfoImplCopyWith<_$GetEngineInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
