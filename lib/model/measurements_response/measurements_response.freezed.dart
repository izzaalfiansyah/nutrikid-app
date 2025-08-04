// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'measurements_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MeasurementsResponse {

 int get total; List<Measurement> get measurements;
/// Create a copy of MeasurementsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MeasurementsResponseCopyWith<MeasurementsResponse> get copyWith => _$MeasurementsResponseCopyWithImpl<MeasurementsResponse>(this as MeasurementsResponse, _$identity);

  /// Serializes this MeasurementsResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MeasurementsResponse&&(identical(other.total, total) || other.total == total)&&const DeepCollectionEquality().equals(other.measurements, measurements));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,const DeepCollectionEquality().hash(measurements));

@override
String toString() {
  return 'MeasurementsResponse(total: $total, measurements: $measurements)';
}


}

/// @nodoc
abstract mixin class $MeasurementsResponseCopyWith<$Res>  {
  factory $MeasurementsResponseCopyWith(MeasurementsResponse value, $Res Function(MeasurementsResponse) _then) = _$MeasurementsResponseCopyWithImpl;
@useResult
$Res call({
 int total, List<Measurement> measurements
});




}
/// @nodoc
class _$MeasurementsResponseCopyWithImpl<$Res>
    implements $MeasurementsResponseCopyWith<$Res> {
  _$MeasurementsResponseCopyWithImpl(this._self, this._then);

  final MeasurementsResponse _self;
  final $Res Function(MeasurementsResponse) _then;

/// Create a copy of MeasurementsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = null,Object? measurements = null,}) {
  return _then(_self.copyWith(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,measurements: null == measurements ? _self.measurements : measurements // ignore: cast_nullable_to_non_nullable
as List<Measurement>,
  ));
}

}


/// Adds pattern-matching-related methods to [MeasurementsResponse].
extension MeasurementsResponsePatterns on MeasurementsResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MeasurementsResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MeasurementsResponse() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MeasurementsResponse value)  $default,){
final _that = this;
switch (_that) {
case _MeasurementsResponse():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MeasurementsResponse value)?  $default,){
final _that = this;
switch (_that) {
case _MeasurementsResponse() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int total,  List<Measurement> measurements)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MeasurementsResponse() when $default != null:
return $default(_that.total,_that.measurements);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int total,  List<Measurement> measurements)  $default,) {final _that = this;
switch (_that) {
case _MeasurementsResponse():
return $default(_that.total,_that.measurements);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int total,  List<Measurement> measurements)?  $default,) {final _that = this;
switch (_that) {
case _MeasurementsResponse() when $default != null:
return $default(_that.total,_that.measurements);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MeasurementsResponse implements MeasurementsResponse {
  const _MeasurementsResponse({this.total = 0, final  List<Measurement> measurements = const []}): _measurements = measurements;
  factory _MeasurementsResponse.fromJson(Map<String, dynamic> json) => _$MeasurementsResponseFromJson(json);

@override@JsonKey() final  int total;
 final  List<Measurement> _measurements;
@override@JsonKey() List<Measurement> get measurements {
  if (_measurements is EqualUnmodifiableListView) return _measurements;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_measurements);
}


/// Create a copy of MeasurementsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MeasurementsResponseCopyWith<_MeasurementsResponse> get copyWith => __$MeasurementsResponseCopyWithImpl<_MeasurementsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MeasurementsResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MeasurementsResponse&&(identical(other.total, total) || other.total == total)&&const DeepCollectionEquality().equals(other._measurements, _measurements));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,const DeepCollectionEquality().hash(_measurements));

@override
String toString() {
  return 'MeasurementsResponse(total: $total, measurements: $measurements)';
}


}

/// @nodoc
abstract mixin class _$MeasurementsResponseCopyWith<$Res> implements $MeasurementsResponseCopyWith<$Res> {
  factory _$MeasurementsResponseCopyWith(_MeasurementsResponse value, $Res Function(_MeasurementsResponse) _then) = __$MeasurementsResponseCopyWithImpl;
@override @useResult
$Res call({
 int total, List<Measurement> measurements
});




}
/// @nodoc
class __$MeasurementsResponseCopyWithImpl<$Res>
    implements _$MeasurementsResponseCopyWith<$Res> {
  __$MeasurementsResponseCopyWithImpl(this._self, this._then);

  final _MeasurementsResponse _self;
  final $Res Function(_MeasurementsResponse) _then;

/// Create a copy of MeasurementsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = null,Object? measurements = null,}) {
  return _then(_MeasurementsResponse(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,measurements: null == measurements ? _self._measurements : measurements // ignore: cast_nullable_to_non_nullable
as List<Measurement>,
  ));
}


}

// dart format on
