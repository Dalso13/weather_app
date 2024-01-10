// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MainState _$MainStateFromJson(Map<String, dynamic> json) {
  return _MainState.fromJson(json);
}

/// @nodoc
mixin _$MainState {
  int get dateLength => throw _privateConstructorUsedError;
  double get lat => throw _privateConstructorUsedError;
  double get lng => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  WeatherModel? get model => throw _privateConstructorUsedError;
  WeatherCodeModel? get codeModel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MainStateCopyWith<MainState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainStateCopyWith<$Res> {
  factory $MainStateCopyWith(MainState value, $Res Function(MainState) then) =
      _$MainStateCopyWithImpl<$Res, MainState>;
  @useResult
  $Res call(
      {int dateLength,
      double lat,
      double lng,
      bool isLoading,
      WeatherModel? model,
      WeatherCodeModel? codeModel});

  $WeatherModelCopyWith<$Res>? get model;
  $WeatherCodeModelCopyWith<$Res>? get codeModel;
}

/// @nodoc
class _$MainStateCopyWithImpl<$Res, $Val extends MainState>
    implements $MainStateCopyWith<$Res> {
  _$MainStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateLength = null,
    Object? lat = null,
    Object? lng = null,
    Object? isLoading = null,
    Object? model = freezed,
    Object? codeModel = freezed,
  }) {
    return _then(_value.copyWith(
      dateLength: null == dateLength
          ? _value.dateLength
          : dateLength // ignore: cast_nullable_to_non_nullable
              as int,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as WeatherModel?,
      codeModel: freezed == codeModel
          ? _value.codeModel
          : codeModel // ignore: cast_nullable_to_non_nullable
              as WeatherCodeModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherModelCopyWith<$Res>? get model {
    if (_value.model == null) {
      return null;
    }

    return $WeatherModelCopyWith<$Res>(_value.model!, (value) {
      return _then(_value.copyWith(model: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherCodeModelCopyWith<$Res>? get codeModel {
    if (_value.codeModel == null) {
      return null;
    }

    return $WeatherCodeModelCopyWith<$Res>(_value.codeModel!, (value) {
      return _then(_value.copyWith(codeModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MainStateImplCopyWith<$Res>
    implements $MainStateCopyWith<$Res> {
  factory _$$MainStateImplCopyWith(
          _$MainStateImpl value, $Res Function(_$MainStateImpl) then) =
      __$$MainStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int dateLength,
      double lat,
      double lng,
      bool isLoading,
      WeatherModel? model,
      WeatherCodeModel? codeModel});

  @override
  $WeatherModelCopyWith<$Res>? get model;
  @override
  $WeatherCodeModelCopyWith<$Res>? get codeModel;
}

/// @nodoc
class __$$MainStateImplCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$MainStateImpl>
    implements _$$MainStateImplCopyWith<$Res> {
  __$$MainStateImplCopyWithImpl(
      _$MainStateImpl _value, $Res Function(_$MainStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateLength = null,
    Object? lat = null,
    Object? lng = null,
    Object? isLoading = null,
    Object? model = freezed,
    Object? codeModel = freezed,
  }) {
    return _then(_$MainStateImpl(
      dateLength: null == dateLength
          ? _value.dateLength
          : dateLength // ignore: cast_nullable_to_non_nullable
              as int,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as WeatherModel?,
      codeModel: freezed == codeModel
          ? _value.codeModel
          : codeModel // ignore: cast_nullable_to_non_nullable
              as WeatherCodeModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MainStateImpl with DiagnosticableTreeMixin implements _MainState {
  const _$MainStateImpl(
      {this.dateLength = 0,
      this.lat = 0,
      this.lng = 0,
      this.isLoading = false,
      this.model,
      this.codeModel});

  factory _$MainStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$MainStateImplFromJson(json);

  @override
  @JsonKey()
  final int dateLength;
  @override
  @JsonKey()
  final double lat;
  @override
  @JsonKey()
  final double lng;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final WeatherModel? model;
  @override
  final WeatherCodeModel? codeModel;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainState(dateLength: $dateLength, lat: $lat, lng: $lng, isLoading: $isLoading, model: $model, codeModel: $codeModel)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MainState'))
      ..add(DiagnosticsProperty('dateLength', dateLength))
      ..add(DiagnosticsProperty('lat', lat))
      ..add(DiagnosticsProperty('lng', lng))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('model', model))
      ..add(DiagnosticsProperty('codeModel', codeModel));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainStateImpl &&
            (identical(other.dateLength, dateLength) ||
                other.dateLength == dateLength) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.codeModel, codeModel) ||
                other.codeModel == codeModel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, dateLength, lat, lng, isLoading, model, codeModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainStateImplCopyWith<_$MainStateImpl> get copyWith =>
      __$$MainStateImplCopyWithImpl<_$MainStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MainStateImplToJson(
      this,
    );
  }
}

abstract class _MainState implements MainState {
  const factory _MainState(
      {final int dateLength,
      final double lat,
      final double lng,
      final bool isLoading,
      final WeatherModel? model,
      final WeatherCodeModel? codeModel}) = _$MainStateImpl;

  factory _MainState.fromJson(Map<String, dynamic> json) =
      _$MainStateImpl.fromJson;

  @override
  int get dateLength;
  @override
  double get lat;
  @override
  double get lng;
  @override
  bool get isLoading;
  @override
  WeatherModel? get model;
  @override
  WeatherCodeModel? get codeModel;
  @override
  @JsonKey(ignore: true)
  _$$MainStateImplCopyWith<_$MainStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
