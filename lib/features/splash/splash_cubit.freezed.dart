// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splash_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SplashState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SplashState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SplashState()';
  }
}

/// @nodoc
class $SplashStateCopyWith<$Res> {
  $SplashStateCopyWith(SplashState _, $Res Function(SplashState) __);
}

/// Adds pattern-matching-related methods to [SplashState].
extension SplashStatePatterns on SplashState {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppStarted value)? appStarted,
    TResult Function(AppInfo value)? appInfo,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case AppStarted() when appStarted != null:
        return appStarted(_that);
      case AppInfo() when appInfo != null:
        return appInfo(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppStarted value) appStarted,
    required TResult Function(AppInfo value) appInfo,
  }) {
    final _that = this;
    switch (_that) {
      case AppStarted():
        return appStarted(_that);
      case AppInfo():
        return appInfo(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppStarted value)? appStarted,
    TResult? Function(AppInfo value)? appInfo,
  }) {
    final _that = this;
    switch (_that) {
      case AppStarted() when appStarted != null:
        return appStarted(_that);
      case AppInfo() when appInfo != null:
        return appInfo(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appStarted,
    TResult Function(PackageInfo packageInfo)? appInfo,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case AppStarted() when appStarted != null:
        return appStarted();
      case AppInfo() when appInfo != null:
        return appInfo(_that.packageInfo);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appStarted,
    required TResult Function(PackageInfo packageInfo) appInfo,
  }) {
    final _that = this;
    switch (_that) {
      case AppStarted():
        return appStarted();
      case AppInfo():
        return appInfo(_that.packageInfo);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appStarted,
    TResult? Function(PackageInfo packageInfo)? appInfo,
  }) {
    final _that = this;
    switch (_that) {
      case AppStarted() when appStarted != null:
        return appStarted();
      case AppInfo() when appInfo != null:
        return appInfo(_that.packageInfo);
      case _:
        return null;
    }
  }
}

/// @nodoc

class AppStarted implements SplashState {
  const AppStarted();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AppStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SplashState.appStarted()';
  }
}

/// @nodoc

class AppInfo implements SplashState {
  const AppInfo(this.packageInfo);

  final PackageInfo packageInfo;

  /// Create a copy of SplashState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AppInfoCopyWith<AppInfo> get copyWith =>
      _$AppInfoCopyWithImpl<AppInfo>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppInfo &&
            (identical(other.packageInfo, packageInfo) ||
                other.packageInfo == packageInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, packageInfo);

  @override
  String toString() {
    return 'SplashState.appInfo(packageInfo: $packageInfo)';
  }
}

/// @nodoc
abstract mixin class $AppInfoCopyWith<$Res>
    implements $SplashStateCopyWith<$Res> {
  factory $AppInfoCopyWith(AppInfo value, $Res Function(AppInfo) _then) =
      _$AppInfoCopyWithImpl;
  @useResult
  $Res call({PackageInfo packageInfo});
}

/// @nodoc
class _$AppInfoCopyWithImpl<$Res> implements $AppInfoCopyWith<$Res> {
  _$AppInfoCopyWithImpl(this._self, this._then);

  final AppInfo _self;
  final $Res Function(AppInfo) _then;

  /// Create a copy of SplashState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? packageInfo = null,
  }) {
    return _then(AppInfo(
      null == packageInfo
          ? _self.packageInfo
          : packageInfo // ignore: cast_nullable_to_non_nullable
              as PackageInfo,
    ));
  }
}

// dart format on
