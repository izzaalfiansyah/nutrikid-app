// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'measurement_suggestion.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MeasurementSuggestion {

 int get id;@JsonKey(name: 'measurement_id') int? get measurementId; Measurement? get measurement;@JsonKey(name: 'creator_id') int? get creatorId; Profile? get creator; String get advice;@JsonKey(name: 'created_at') DateTime? get createdAt;
/// Create a copy of MeasurementSuggestion
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MeasurementSuggestionCopyWith<MeasurementSuggestion> get copyWith => _$MeasurementSuggestionCopyWithImpl<MeasurementSuggestion>(this as MeasurementSuggestion, _$identity);

  /// Serializes this MeasurementSuggestion to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MeasurementSuggestion&&(identical(other.id, id) || other.id == id)&&(identical(other.measurementId, measurementId) || other.measurementId == measurementId)&&(identical(other.measurement, measurement) || other.measurement == measurement)&&(identical(other.creatorId, creatorId) || other.creatorId == creatorId)&&(identical(other.creator, creator) || other.creator == creator)&&(identical(other.advice, advice) || other.advice == advice)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,measurementId,measurement,creatorId,creator,advice,createdAt);

@override
String toString() {
  return 'MeasurementSuggestion(id: $id, measurementId: $measurementId, measurement: $measurement, creatorId: $creatorId, creator: $creator, advice: $advice, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $MeasurementSuggestionCopyWith<$Res>  {
  factory $MeasurementSuggestionCopyWith(MeasurementSuggestion value, $Res Function(MeasurementSuggestion) _then) = _$MeasurementSuggestionCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'measurement_id') int? measurementId, Measurement? measurement,@JsonKey(name: 'creator_id') int? creatorId, Profile? creator, String advice,@JsonKey(name: 'created_at') DateTime? createdAt
});


$MeasurementCopyWith<$Res>? get measurement;$ProfileCopyWith<$Res>? get creator;

}
/// @nodoc
class _$MeasurementSuggestionCopyWithImpl<$Res>
    implements $MeasurementSuggestionCopyWith<$Res> {
  _$MeasurementSuggestionCopyWithImpl(this._self, this._then);

  final MeasurementSuggestion _self;
  final $Res Function(MeasurementSuggestion) _then;

/// Create a copy of MeasurementSuggestion
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? measurementId = freezed,Object? measurement = freezed,Object? creatorId = freezed,Object? creator = freezed,Object? advice = null,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,measurementId: freezed == measurementId ? _self.measurementId : measurementId // ignore: cast_nullable_to_non_nullable
as int?,measurement: freezed == measurement ? _self.measurement : measurement // ignore: cast_nullable_to_non_nullable
as Measurement?,creatorId: freezed == creatorId ? _self.creatorId : creatorId // ignore: cast_nullable_to_non_nullable
as int?,creator: freezed == creator ? _self.creator : creator // ignore: cast_nullable_to_non_nullable
as Profile?,advice: null == advice ? _self.advice : advice // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of MeasurementSuggestion
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MeasurementCopyWith<$Res>? get measurement {
    if (_self.measurement == null) {
    return null;
  }

  return $MeasurementCopyWith<$Res>(_self.measurement!, (value) {
    return _then(_self.copyWith(measurement: value));
  });
}/// Create a copy of MeasurementSuggestion
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileCopyWith<$Res>? get creator {
    if (_self.creator == null) {
    return null;
  }

  return $ProfileCopyWith<$Res>(_self.creator!, (value) {
    return _then(_self.copyWith(creator: value));
  });
}
}


/// Adds pattern-matching-related methods to [MeasurementSuggestion].
extension MeasurementSuggestionPatterns on MeasurementSuggestion {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MeasurementSuggestion value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MeasurementSuggestion() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MeasurementSuggestion value)  $default,){
final _that = this;
switch (_that) {
case _MeasurementSuggestion():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MeasurementSuggestion value)?  $default,){
final _that = this;
switch (_that) {
case _MeasurementSuggestion() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'measurement_id')  int? measurementId,  Measurement? measurement, @JsonKey(name: 'creator_id')  int? creatorId,  Profile? creator,  String advice, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MeasurementSuggestion() when $default != null:
return $default(_that.id,_that.measurementId,_that.measurement,_that.creatorId,_that.creator,_that.advice,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'measurement_id')  int? measurementId,  Measurement? measurement, @JsonKey(name: 'creator_id')  int? creatorId,  Profile? creator,  String advice, @JsonKey(name: 'created_at')  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _MeasurementSuggestion():
return $default(_that.id,_that.measurementId,_that.measurement,_that.creatorId,_that.creator,_that.advice,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'measurement_id')  int? measurementId,  Measurement? measurement, @JsonKey(name: 'creator_id')  int? creatorId,  Profile? creator,  String advice, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _MeasurementSuggestion() when $default != null:
return $default(_that.id,_that.measurementId,_that.measurement,_that.creatorId,_that.creator,_that.advice,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MeasurementSuggestion implements MeasurementSuggestion {
  const _MeasurementSuggestion({this.id = 0, @JsonKey(name: 'measurement_id') this.measurementId, this.measurement, @JsonKey(name: 'creator_id') this.creatorId, this.creator, this.advice = '', @JsonKey(name: 'created_at') this.createdAt});
  factory _MeasurementSuggestion.fromJson(Map<String, dynamic> json) => _$MeasurementSuggestionFromJson(json);

@override@JsonKey() final  int id;
@override@JsonKey(name: 'measurement_id') final  int? measurementId;
@override final  Measurement? measurement;
@override@JsonKey(name: 'creator_id') final  int? creatorId;
@override final  Profile? creator;
@override@JsonKey() final  String advice;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;

/// Create a copy of MeasurementSuggestion
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MeasurementSuggestionCopyWith<_MeasurementSuggestion> get copyWith => __$MeasurementSuggestionCopyWithImpl<_MeasurementSuggestion>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MeasurementSuggestionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MeasurementSuggestion&&(identical(other.id, id) || other.id == id)&&(identical(other.measurementId, measurementId) || other.measurementId == measurementId)&&(identical(other.measurement, measurement) || other.measurement == measurement)&&(identical(other.creatorId, creatorId) || other.creatorId == creatorId)&&(identical(other.creator, creator) || other.creator == creator)&&(identical(other.advice, advice) || other.advice == advice)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,measurementId,measurement,creatorId,creator,advice,createdAt);

@override
String toString() {
  return 'MeasurementSuggestion(id: $id, measurementId: $measurementId, measurement: $measurement, creatorId: $creatorId, creator: $creator, advice: $advice, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$MeasurementSuggestionCopyWith<$Res> implements $MeasurementSuggestionCopyWith<$Res> {
  factory _$MeasurementSuggestionCopyWith(_MeasurementSuggestion value, $Res Function(_MeasurementSuggestion) _then) = __$MeasurementSuggestionCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'measurement_id') int? measurementId, Measurement? measurement,@JsonKey(name: 'creator_id') int? creatorId, Profile? creator, String advice,@JsonKey(name: 'created_at') DateTime? createdAt
});


@override $MeasurementCopyWith<$Res>? get measurement;@override $ProfileCopyWith<$Res>? get creator;

}
/// @nodoc
class __$MeasurementSuggestionCopyWithImpl<$Res>
    implements _$MeasurementSuggestionCopyWith<$Res> {
  __$MeasurementSuggestionCopyWithImpl(this._self, this._then);

  final _MeasurementSuggestion _self;
  final $Res Function(_MeasurementSuggestion) _then;

/// Create a copy of MeasurementSuggestion
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? measurementId = freezed,Object? measurement = freezed,Object? creatorId = freezed,Object? creator = freezed,Object? advice = null,Object? createdAt = freezed,}) {
  return _then(_MeasurementSuggestion(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,measurementId: freezed == measurementId ? _self.measurementId : measurementId // ignore: cast_nullable_to_non_nullable
as int?,measurement: freezed == measurement ? _self.measurement : measurement // ignore: cast_nullable_to_non_nullable
as Measurement?,creatorId: freezed == creatorId ? _self.creatorId : creatorId // ignore: cast_nullable_to_non_nullable
as int?,creator: freezed == creator ? _self.creator : creator // ignore: cast_nullable_to_non_nullable
as Profile?,advice: null == advice ? _self.advice : advice // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of MeasurementSuggestion
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MeasurementCopyWith<$Res>? get measurement {
    if (_self.measurement == null) {
    return null;
  }

  return $MeasurementCopyWith<$Res>(_self.measurement!, (value) {
    return _then(_self.copyWith(measurement: value));
  });
}/// Create a copy of MeasurementSuggestion
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileCopyWith<$Res>? get creator {
    if (_self.creator == null) {
    return null;
  }

  return $ProfileCopyWith<$Res>(_self.creator!, (value) {
    return _then(_self.copyWith(creator: value));
  });
}
}

// dart format on
