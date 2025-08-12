// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'z_score.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ZScoreRange {

 int get z; double get min; double get max;
/// Create a copy of ZScoreRange
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ZScoreRangeCopyWith<ZScoreRange> get copyWith => _$ZScoreRangeCopyWithImpl<ZScoreRange>(this as ZScoreRange, _$identity);

  /// Serializes this ZScoreRange to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ZScoreRange&&(identical(other.z, z) || other.z == z)&&(identical(other.min, min) || other.min == min)&&(identical(other.max, max) || other.max == max));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,z,min,max);

@override
String toString() {
  return 'ZScoreRange(z: $z, min: $min, max: $max)';
}


}

/// @nodoc
abstract mixin class $ZScoreRangeCopyWith<$Res>  {
  factory $ZScoreRangeCopyWith(ZScoreRange value, $Res Function(ZScoreRange) _then) = _$ZScoreRangeCopyWithImpl;
@useResult
$Res call({
 int z, double min, double max
});




}
/// @nodoc
class _$ZScoreRangeCopyWithImpl<$Res>
    implements $ZScoreRangeCopyWith<$Res> {
  _$ZScoreRangeCopyWithImpl(this._self, this._then);

  final ZScoreRange _self;
  final $Res Function(ZScoreRange) _then;

/// Create a copy of ZScoreRange
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? z = null,Object? min = null,Object? max = null,}) {
  return _then(_self.copyWith(
z: null == z ? _self.z : z // ignore: cast_nullable_to_non_nullable
as int,min: null == min ? _self.min : min // ignore: cast_nullable_to_non_nullable
as double,max: null == max ? _self.max : max // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [ZScoreRange].
extension ZScoreRangePatterns on ZScoreRange {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ZScoreRange value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ZScoreRange() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ZScoreRange value)  $default,){
final _that = this;
switch (_that) {
case _ZScoreRange():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ZScoreRange value)?  $default,){
final _that = this;
switch (_that) {
case _ZScoreRange() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int z,  double min,  double max)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ZScoreRange() when $default != null:
return $default(_that.z,_that.min,_that.max);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int z,  double min,  double max)  $default,) {final _that = this;
switch (_that) {
case _ZScoreRange():
return $default(_that.z,_that.min,_that.max);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int z,  double min,  double max)?  $default,) {final _that = this;
switch (_that) {
case _ZScoreRange() when $default != null:
return $default(_that.z,_that.min,_that.max);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ZScoreRange implements ZScoreRange {
  const _ZScoreRange({required this.z, required this.min, required this.max});
  factory _ZScoreRange.fromJson(Map<String, dynamic> json) => _$ZScoreRangeFromJson(json);

@override final  int z;
@override final  double min;
@override final  double max;

/// Create a copy of ZScoreRange
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ZScoreRangeCopyWith<_ZScoreRange> get copyWith => __$ZScoreRangeCopyWithImpl<_ZScoreRange>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ZScoreRangeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ZScoreRange&&(identical(other.z, z) || other.z == z)&&(identical(other.min, min) || other.min == min)&&(identical(other.max, max) || other.max == max));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,z,min,max);

@override
String toString() {
  return 'ZScoreRange(z: $z, min: $min, max: $max)';
}


}

/// @nodoc
abstract mixin class _$ZScoreRangeCopyWith<$Res> implements $ZScoreRangeCopyWith<$Res> {
  factory _$ZScoreRangeCopyWith(_ZScoreRange value, $Res Function(_ZScoreRange) _then) = __$ZScoreRangeCopyWithImpl;
@override @useResult
$Res call({
 int z, double min, double max
});




}
/// @nodoc
class __$ZScoreRangeCopyWithImpl<$Res>
    implements _$ZScoreRangeCopyWith<$Res> {
  __$ZScoreRangeCopyWithImpl(this._self, this._then);

  final _ZScoreRange _self;
  final $Res Function(_ZScoreRange) _then;

/// Create a copy of ZScoreRange
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? z = null,Object? min = null,Object? max = null,}) {
  return _then(_ZScoreRange(
z: null == z ? _self.z : z // ignore: cast_nullable_to_non_nullable
as int,min: null == min ? _self.min : min // ignore: cast_nullable_to_non_nullable
as double,max: null == max ? _self.max : max // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$ZScore {

 int get month;@JsonKey(name: "z_scores_range") List<ZScoreRange> get zScoresRange;
/// Create a copy of ZScore
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ZScoreCopyWith<ZScore> get copyWith => _$ZScoreCopyWithImpl<ZScore>(this as ZScore, _$identity);

  /// Serializes this ZScore to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ZScore&&(identical(other.month, month) || other.month == month)&&const DeepCollectionEquality().equals(other.zScoresRange, zScoresRange));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,month,const DeepCollectionEquality().hash(zScoresRange));

@override
String toString() {
  return 'ZScore(month: $month, zScoresRange: $zScoresRange)';
}


}

/// @nodoc
abstract mixin class $ZScoreCopyWith<$Res>  {
  factory $ZScoreCopyWith(ZScore value, $Res Function(ZScore) _then) = _$ZScoreCopyWithImpl;
@useResult
$Res call({
 int month,@JsonKey(name: "z_scores_range") List<ZScoreRange> zScoresRange
});




}
/// @nodoc
class _$ZScoreCopyWithImpl<$Res>
    implements $ZScoreCopyWith<$Res> {
  _$ZScoreCopyWithImpl(this._self, this._then);

  final ZScore _self;
  final $Res Function(ZScore) _then;

/// Create a copy of ZScore
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? month = null,Object? zScoresRange = null,}) {
  return _then(_self.copyWith(
month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as int,zScoresRange: null == zScoresRange ? _self.zScoresRange : zScoresRange // ignore: cast_nullable_to_non_nullable
as List<ZScoreRange>,
  ));
}

}


/// Adds pattern-matching-related methods to [ZScore].
extension ZScorePatterns on ZScore {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ZScore value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ZScore() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ZScore value)  $default,){
final _that = this;
switch (_that) {
case _ZScore():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ZScore value)?  $default,){
final _that = this;
switch (_that) {
case _ZScore() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int month, @JsonKey(name: "z_scores_range")  List<ZScoreRange> zScoresRange)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ZScore() when $default != null:
return $default(_that.month,_that.zScoresRange);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int month, @JsonKey(name: "z_scores_range")  List<ZScoreRange> zScoresRange)  $default,) {final _that = this;
switch (_that) {
case _ZScore():
return $default(_that.month,_that.zScoresRange);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int month, @JsonKey(name: "z_scores_range")  List<ZScoreRange> zScoresRange)?  $default,) {final _that = this;
switch (_that) {
case _ZScore() when $default != null:
return $default(_that.month,_that.zScoresRange);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ZScore implements ZScore {
  const _ZScore({required this.month, @JsonKey(name: "z_scores_range") final  List<ZScoreRange> zScoresRange = const []}): _zScoresRange = zScoresRange;
  factory _ZScore.fromJson(Map<String, dynamic> json) => _$ZScoreFromJson(json);

@override final  int month;
 final  List<ZScoreRange> _zScoresRange;
@override@JsonKey(name: "z_scores_range") List<ZScoreRange> get zScoresRange {
  if (_zScoresRange is EqualUnmodifiableListView) return _zScoresRange;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_zScoresRange);
}


/// Create a copy of ZScore
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ZScoreCopyWith<_ZScore> get copyWith => __$ZScoreCopyWithImpl<_ZScore>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ZScoreToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ZScore&&(identical(other.month, month) || other.month == month)&&const DeepCollectionEquality().equals(other._zScoresRange, _zScoresRange));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,month,const DeepCollectionEquality().hash(_zScoresRange));

@override
String toString() {
  return 'ZScore(month: $month, zScoresRange: $zScoresRange)';
}


}

/// @nodoc
abstract mixin class _$ZScoreCopyWith<$Res> implements $ZScoreCopyWith<$Res> {
  factory _$ZScoreCopyWith(_ZScore value, $Res Function(_ZScore) _then) = __$ZScoreCopyWithImpl;
@override @useResult
$Res call({
 int month,@JsonKey(name: "z_scores_range") List<ZScoreRange> zScoresRange
});




}
/// @nodoc
class __$ZScoreCopyWithImpl<$Res>
    implements _$ZScoreCopyWith<$Res> {
  __$ZScoreCopyWithImpl(this._self, this._then);

  final _ZScore _self;
  final $Res Function(_ZScore) _then;

/// Create a copy of ZScore
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? month = null,Object? zScoresRange = null,}) {
  return _then(_ZScore(
month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as int,zScoresRange: null == zScoresRange ? _self._zScoresRange : zScoresRange // ignore: cast_nullable_to_non_nullable
as List<ZScoreRange>,
  ));
}


}

// dart format on
