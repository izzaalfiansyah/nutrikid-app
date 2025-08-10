// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'measurement.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Measurement {

 int get id;@JsonKey(name: 'student_id') int? get studentId; Student? get student;@JsonKey(name: 'student_age') int get studentAge;@JsonKey(name: 'student_weight') double get studentWeight;@JsonKey(name: 'student_height') double get studentHeight;@JsonKey(name: 'student_bmi') double get studentBmi;@JsonKey(name: 'creator_id') int? get creatorId; Profile? get creator;@JsonKey(name: 'created_at') DateTime? get createdAt;@JsonKey(name: 'deleted_at') DateTime? get deltedAt;@JsonKey(name: 'z_score') double get zScore; MeasurementStatus get status;
/// Create a copy of Measurement
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MeasurementCopyWith<Measurement> get copyWith => _$MeasurementCopyWithImpl<Measurement>(this as Measurement, _$identity);

  /// Serializes this Measurement to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Measurement&&(identical(other.id, id) || other.id == id)&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.student, student) || other.student == student)&&(identical(other.studentAge, studentAge) || other.studentAge == studentAge)&&(identical(other.studentWeight, studentWeight) || other.studentWeight == studentWeight)&&(identical(other.studentHeight, studentHeight) || other.studentHeight == studentHeight)&&(identical(other.studentBmi, studentBmi) || other.studentBmi == studentBmi)&&(identical(other.creatorId, creatorId) || other.creatorId == creatorId)&&(identical(other.creator, creator) || other.creator == creator)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.deltedAt, deltedAt) || other.deltedAt == deltedAt)&&(identical(other.zScore, zScore) || other.zScore == zScore)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,studentId,student,studentAge,studentWeight,studentHeight,studentBmi,creatorId,creator,createdAt,deltedAt,zScore,status);

@override
String toString() {
  return 'Measurement(id: $id, studentId: $studentId, student: $student, studentAge: $studentAge, studentWeight: $studentWeight, studentHeight: $studentHeight, studentBmi: $studentBmi, creatorId: $creatorId, creator: $creator, createdAt: $createdAt, deltedAt: $deltedAt, zScore: $zScore, status: $status)';
}


}

/// @nodoc
abstract mixin class $MeasurementCopyWith<$Res>  {
  factory $MeasurementCopyWith(Measurement value, $Res Function(Measurement) _then) = _$MeasurementCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'student_id') int? studentId, Student? student,@JsonKey(name: 'student_age') int studentAge,@JsonKey(name: 'student_weight') double studentWeight,@JsonKey(name: 'student_height') double studentHeight,@JsonKey(name: 'student_bmi') double studentBmi,@JsonKey(name: 'creator_id') int? creatorId, Profile? creator,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'deleted_at') DateTime? deltedAt,@JsonKey(name: 'z_score') double zScore, MeasurementStatus status
});


$StudentCopyWith<$Res>? get student;$ProfileCopyWith<$Res>? get creator;

}
/// @nodoc
class _$MeasurementCopyWithImpl<$Res>
    implements $MeasurementCopyWith<$Res> {
  _$MeasurementCopyWithImpl(this._self, this._then);

  final Measurement _self;
  final $Res Function(Measurement) _then;

/// Create a copy of Measurement
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? studentId = freezed,Object? student = freezed,Object? studentAge = null,Object? studentWeight = null,Object? studentHeight = null,Object? studentBmi = null,Object? creatorId = freezed,Object? creator = freezed,Object? createdAt = freezed,Object? deltedAt = freezed,Object? zScore = null,Object? status = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,studentId: freezed == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as int?,student: freezed == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as Student?,studentAge: null == studentAge ? _self.studentAge : studentAge // ignore: cast_nullable_to_non_nullable
as int,studentWeight: null == studentWeight ? _self.studentWeight : studentWeight // ignore: cast_nullable_to_non_nullable
as double,studentHeight: null == studentHeight ? _self.studentHeight : studentHeight // ignore: cast_nullable_to_non_nullable
as double,studentBmi: null == studentBmi ? _self.studentBmi : studentBmi // ignore: cast_nullable_to_non_nullable
as double,creatorId: freezed == creatorId ? _self.creatorId : creatorId // ignore: cast_nullable_to_non_nullable
as int?,creator: freezed == creator ? _self.creator : creator // ignore: cast_nullable_to_non_nullable
as Profile?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,deltedAt: freezed == deltedAt ? _self.deltedAt : deltedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,zScore: null == zScore ? _self.zScore : zScore // ignore: cast_nullable_to_non_nullable
as double,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MeasurementStatus,
  ));
}
/// Create a copy of Measurement
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StudentCopyWith<$Res>? get student {
    if (_self.student == null) {
    return null;
  }

  return $StudentCopyWith<$Res>(_self.student!, (value) {
    return _then(_self.copyWith(student: value));
  });
}/// Create a copy of Measurement
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


/// Adds pattern-matching-related methods to [Measurement].
extension MeasurementPatterns on Measurement {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Measurement value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Measurement() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Measurement value)  $default,){
final _that = this;
switch (_that) {
case _Measurement():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Measurement value)?  $default,){
final _that = this;
switch (_that) {
case _Measurement() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'student_id')  int? studentId,  Student? student, @JsonKey(name: 'student_age')  int studentAge, @JsonKey(name: 'student_weight')  double studentWeight, @JsonKey(name: 'student_height')  double studentHeight, @JsonKey(name: 'student_bmi')  double studentBmi, @JsonKey(name: 'creator_id')  int? creatorId,  Profile? creator, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'deleted_at')  DateTime? deltedAt, @JsonKey(name: 'z_score')  double zScore,  MeasurementStatus status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Measurement() when $default != null:
return $default(_that.id,_that.studentId,_that.student,_that.studentAge,_that.studentWeight,_that.studentHeight,_that.studentBmi,_that.creatorId,_that.creator,_that.createdAt,_that.deltedAt,_that.zScore,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'student_id')  int? studentId,  Student? student, @JsonKey(name: 'student_age')  int studentAge, @JsonKey(name: 'student_weight')  double studentWeight, @JsonKey(name: 'student_height')  double studentHeight, @JsonKey(name: 'student_bmi')  double studentBmi, @JsonKey(name: 'creator_id')  int? creatorId,  Profile? creator, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'deleted_at')  DateTime? deltedAt, @JsonKey(name: 'z_score')  double zScore,  MeasurementStatus status)  $default,) {final _that = this;
switch (_that) {
case _Measurement():
return $default(_that.id,_that.studentId,_that.student,_that.studentAge,_that.studentWeight,_that.studentHeight,_that.studentBmi,_that.creatorId,_that.creator,_that.createdAt,_that.deltedAt,_that.zScore,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'student_id')  int? studentId,  Student? student, @JsonKey(name: 'student_age')  int studentAge, @JsonKey(name: 'student_weight')  double studentWeight, @JsonKey(name: 'student_height')  double studentHeight, @JsonKey(name: 'student_bmi')  double studentBmi, @JsonKey(name: 'creator_id')  int? creatorId,  Profile? creator, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'deleted_at')  DateTime? deltedAt, @JsonKey(name: 'z_score')  double zScore,  MeasurementStatus status)?  $default,) {final _that = this;
switch (_that) {
case _Measurement() when $default != null:
return $default(_that.id,_that.studentId,_that.student,_that.studentAge,_that.studentWeight,_that.studentHeight,_that.studentBmi,_that.creatorId,_that.creator,_that.createdAt,_that.deltedAt,_that.zScore,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Measurement implements Measurement {
  const _Measurement({this.id = 0, @JsonKey(name: 'student_id') this.studentId, this.student, @JsonKey(name: 'student_age') this.studentAge = 0, @JsonKey(name: 'student_weight') this.studentWeight = 0, @JsonKey(name: 'student_height') this.studentHeight = 0, @JsonKey(name: 'student_bmi') this.studentBmi = 0, @JsonKey(name: 'creator_id') this.creatorId, this.creator, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'deleted_at') this.deltedAt, @JsonKey(name: 'z_score') this.zScore = 0, this.status = MeasurementStatus.normal});
  factory _Measurement.fromJson(Map<String, dynamic> json) => _$MeasurementFromJson(json);

@override@JsonKey() final  int id;
@override@JsonKey(name: 'student_id') final  int? studentId;
@override final  Student? student;
@override@JsonKey(name: 'student_age') final  int studentAge;
@override@JsonKey(name: 'student_weight') final  double studentWeight;
@override@JsonKey(name: 'student_height') final  double studentHeight;
@override@JsonKey(name: 'student_bmi') final  double studentBmi;
@override@JsonKey(name: 'creator_id') final  int? creatorId;
@override final  Profile? creator;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;
@override@JsonKey(name: 'deleted_at') final  DateTime? deltedAt;
@override@JsonKey(name: 'z_score') final  double zScore;
@override@JsonKey() final  MeasurementStatus status;

/// Create a copy of Measurement
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MeasurementCopyWith<_Measurement> get copyWith => __$MeasurementCopyWithImpl<_Measurement>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MeasurementToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Measurement&&(identical(other.id, id) || other.id == id)&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.student, student) || other.student == student)&&(identical(other.studentAge, studentAge) || other.studentAge == studentAge)&&(identical(other.studentWeight, studentWeight) || other.studentWeight == studentWeight)&&(identical(other.studentHeight, studentHeight) || other.studentHeight == studentHeight)&&(identical(other.studentBmi, studentBmi) || other.studentBmi == studentBmi)&&(identical(other.creatorId, creatorId) || other.creatorId == creatorId)&&(identical(other.creator, creator) || other.creator == creator)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.deltedAt, deltedAt) || other.deltedAt == deltedAt)&&(identical(other.zScore, zScore) || other.zScore == zScore)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,studentId,student,studentAge,studentWeight,studentHeight,studentBmi,creatorId,creator,createdAt,deltedAt,zScore,status);

@override
String toString() {
  return 'Measurement(id: $id, studentId: $studentId, student: $student, studentAge: $studentAge, studentWeight: $studentWeight, studentHeight: $studentHeight, studentBmi: $studentBmi, creatorId: $creatorId, creator: $creator, createdAt: $createdAt, deltedAt: $deltedAt, zScore: $zScore, status: $status)';
}


}

/// @nodoc
abstract mixin class _$MeasurementCopyWith<$Res> implements $MeasurementCopyWith<$Res> {
  factory _$MeasurementCopyWith(_Measurement value, $Res Function(_Measurement) _then) = __$MeasurementCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'student_id') int? studentId, Student? student,@JsonKey(name: 'student_age') int studentAge,@JsonKey(name: 'student_weight') double studentWeight,@JsonKey(name: 'student_height') double studentHeight,@JsonKey(name: 'student_bmi') double studentBmi,@JsonKey(name: 'creator_id') int? creatorId, Profile? creator,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'deleted_at') DateTime? deltedAt,@JsonKey(name: 'z_score') double zScore, MeasurementStatus status
});


@override $StudentCopyWith<$Res>? get student;@override $ProfileCopyWith<$Res>? get creator;

}
/// @nodoc
class __$MeasurementCopyWithImpl<$Res>
    implements _$MeasurementCopyWith<$Res> {
  __$MeasurementCopyWithImpl(this._self, this._then);

  final _Measurement _self;
  final $Res Function(_Measurement) _then;

/// Create a copy of Measurement
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? studentId = freezed,Object? student = freezed,Object? studentAge = null,Object? studentWeight = null,Object? studentHeight = null,Object? studentBmi = null,Object? creatorId = freezed,Object? creator = freezed,Object? createdAt = freezed,Object? deltedAt = freezed,Object? zScore = null,Object? status = null,}) {
  return _then(_Measurement(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,studentId: freezed == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as int?,student: freezed == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as Student?,studentAge: null == studentAge ? _self.studentAge : studentAge // ignore: cast_nullable_to_non_nullable
as int,studentWeight: null == studentWeight ? _self.studentWeight : studentWeight // ignore: cast_nullable_to_non_nullable
as double,studentHeight: null == studentHeight ? _self.studentHeight : studentHeight // ignore: cast_nullable_to_non_nullable
as double,studentBmi: null == studentBmi ? _self.studentBmi : studentBmi // ignore: cast_nullable_to_non_nullable
as double,creatorId: freezed == creatorId ? _self.creatorId : creatorId // ignore: cast_nullable_to_non_nullable
as int?,creator: freezed == creator ? _self.creator : creator // ignore: cast_nullable_to_non_nullable
as Profile?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,deltedAt: freezed == deltedAt ? _self.deltedAt : deltedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,zScore: null == zScore ? _self.zScore : zScore // ignore: cast_nullable_to_non_nullable
as double,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MeasurementStatus,
  ));
}

/// Create a copy of Measurement
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StudentCopyWith<$Res>? get student {
    if (_self.student == null) {
    return null;
  }

  return $StudentCopyWith<$Res>(_self.student!, (value) {
    return _then(_self.copyWith(student: value));
  });
}/// Create a copy of Measurement
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
