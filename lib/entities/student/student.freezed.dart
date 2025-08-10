// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Student {

 int get id; String get name;@JsonKey(name: 'birth_date') DateTime? get birthDate; Gender get gender;@JsonKey(name: 'school_id') int? get schoolId; School? get school; Measurement? get measurement; int get age;@JsonKey(name: 'age_month') int get ageMonth;@JsonKey(name: 'age_month_total') int get ageMonthTotal;
/// Create a copy of Student
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StudentCopyWith<Student> get copyWith => _$StudentCopyWithImpl<Student>(this as Student, _$identity);

  /// Serializes this Student to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Student&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.birthDate, birthDate) || other.birthDate == birthDate)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.schoolId, schoolId) || other.schoolId == schoolId)&&(identical(other.school, school) || other.school == school)&&(identical(other.measurement, measurement) || other.measurement == measurement)&&(identical(other.age, age) || other.age == age)&&(identical(other.ageMonth, ageMonth) || other.ageMonth == ageMonth)&&(identical(other.ageMonthTotal, ageMonthTotal) || other.ageMonthTotal == ageMonthTotal));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,birthDate,gender,schoolId,school,measurement,age,ageMonth,ageMonthTotal);

@override
String toString() {
  return 'Student(id: $id, name: $name, birthDate: $birthDate, gender: $gender, schoolId: $schoolId, school: $school, measurement: $measurement, age: $age, ageMonth: $ageMonth, ageMonthTotal: $ageMonthTotal)';
}


}

/// @nodoc
abstract mixin class $StudentCopyWith<$Res>  {
  factory $StudentCopyWith(Student value, $Res Function(Student) _then) = _$StudentCopyWithImpl;
@useResult
$Res call({
 int id, String name,@JsonKey(name: 'birth_date') DateTime? birthDate, Gender gender,@JsonKey(name: 'school_id') int? schoolId, School? school, Measurement? measurement, int age,@JsonKey(name: 'age_month') int ageMonth,@JsonKey(name: 'age_month_total') int ageMonthTotal
});


$SchoolCopyWith<$Res>? get school;$MeasurementCopyWith<$Res>? get measurement;

}
/// @nodoc
class _$StudentCopyWithImpl<$Res>
    implements $StudentCopyWith<$Res> {
  _$StudentCopyWithImpl(this._self, this._then);

  final Student _self;
  final $Res Function(Student) _then;

/// Create a copy of Student
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? birthDate = freezed,Object? gender = null,Object? schoolId = freezed,Object? school = freezed,Object? measurement = freezed,Object? age = null,Object? ageMonth = null,Object? ageMonthTotal = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,birthDate: freezed == birthDate ? _self.birthDate : birthDate // ignore: cast_nullable_to_non_nullable
as DateTime?,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as Gender,schoolId: freezed == schoolId ? _self.schoolId : schoolId // ignore: cast_nullable_to_non_nullable
as int?,school: freezed == school ? _self.school : school // ignore: cast_nullable_to_non_nullable
as School?,measurement: freezed == measurement ? _self.measurement : measurement // ignore: cast_nullable_to_non_nullable
as Measurement?,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,ageMonth: null == ageMonth ? _self.ageMonth : ageMonth // ignore: cast_nullable_to_non_nullable
as int,ageMonthTotal: null == ageMonthTotal ? _self.ageMonthTotal : ageMonthTotal // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of Student
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SchoolCopyWith<$Res>? get school {
    if (_self.school == null) {
    return null;
  }

  return $SchoolCopyWith<$Res>(_self.school!, (value) {
    return _then(_self.copyWith(school: value));
  });
}/// Create a copy of Student
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
}
}


/// Adds pattern-matching-related methods to [Student].
extension StudentPatterns on Student {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Student value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Student() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Student value)  $default,){
final _that = this;
switch (_that) {
case _Student():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Student value)?  $default,){
final _that = this;
switch (_that) {
case _Student() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name, @JsonKey(name: 'birth_date')  DateTime? birthDate,  Gender gender, @JsonKey(name: 'school_id')  int? schoolId,  School? school,  Measurement? measurement,  int age, @JsonKey(name: 'age_month')  int ageMonth, @JsonKey(name: 'age_month_total')  int ageMonthTotal)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Student() when $default != null:
return $default(_that.id,_that.name,_that.birthDate,_that.gender,_that.schoolId,_that.school,_that.measurement,_that.age,_that.ageMonth,_that.ageMonthTotal);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name, @JsonKey(name: 'birth_date')  DateTime? birthDate,  Gender gender, @JsonKey(name: 'school_id')  int? schoolId,  School? school,  Measurement? measurement,  int age, @JsonKey(name: 'age_month')  int ageMonth, @JsonKey(name: 'age_month_total')  int ageMonthTotal)  $default,) {final _that = this;
switch (_that) {
case _Student():
return $default(_that.id,_that.name,_that.birthDate,_that.gender,_that.schoolId,_that.school,_that.measurement,_that.age,_that.ageMonth,_that.ageMonthTotal);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name, @JsonKey(name: 'birth_date')  DateTime? birthDate,  Gender gender, @JsonKey(name: 'school_id')  int? schoolId,  School? school,  Measurement? measurement,  int age, @JsonKey(name: 'age_month')  int ageMonth, @JsonKey(name: 'age_month_total')  int ageMonthTotal)?  $default,) {final _that = this;
switch (_that) {
case _Student() when $default != null:
return $default(_that.id,_that.name,_that.birthDate,_that.gender,_that.schoolId,_that.school,_that.measurement,_that.age,_that.ageMonth,_that.ageMonthTotal);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Student extends Student {
  const _Student({this.id = 0, this.name = '', @JsonKey(name: 'birth_date') this.birthDate, this.gender = Gender.l, @JsonKey(name: 'school_id') this.schoolId, this.school, this.measurement, this.age = 0, @JsonKey(name: 'age_month') this.ageMonth = 0, @JsonKey(name: 'age_month_total') this.ageMonthTotal = 0}): super._();
  factory _Student.fromJson(Map<String, dynamic> json) => _$StudentFromJson(json);

@override@JsonKey() final  int id;
@override@JsonKey() final  String name;
@override@JsonKey(name: 'birth_date') final  DateTime? birthDate;
@override@JsonKey() final  Gender gender;
@override@JsonKey(name: 'school_id') final  int? schoolId;
@override final  School? school;
@override final  Measurement? measurement;
@override@JsonKey() final  int age;
@override@JsonKey(name: 'age_month') final  int ageMonth;
@override@JsonKey(name: 'age_month_total') final  int ageMonthTotal;

/// Create a copy of Student
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StudentCopyWith<_Student> get copyWith => __$StudentCopyWithImpl<_Student>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StudentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Student&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.birthDate, birthDate) || other.birthDate == birthDate)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.schoolId, schoolId) || other.schoolId == schoolId)&&(identical(other.school, school) || other.school == school)&&(identical(other.measurement, measurement) || other.measurement == measurement)&&(identical(other.age, age) || other.age == age)&&(identical(other.ageMonth, ageMonth) || other.ageMonth == ageMonth)&&(identical(other.ageMonthTotal, ageMonthTotal) || other.ageMonthTotal == ageMonthTotal));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,birthDate,gender,schoolId,school,measurement,age,ageMonth,ageMonthTotal);

@override
String toString() {
  return 'Student(id: $id, name: $name, birthDate: $birthDate, gender: $gender, schoolId: $schoolId, school: $school, measurement: $measurement, age: $age, ageMonth: $ageMonth, ageMonthTotal: $ageMonthTotal)';
}


}

/// @nodoc
abstract mixin class _$StudentCopyWith<$Res> implements $StudentCopyWith<$Res> {
  factory _$StudentCopyWith(_Student value, $Res Function(_Student) _then) = __$StudentCopyWithImpl;
@override @useResult
$Res call({
 int id, String name,@JsonKey(name: 'birth_date') DateTime? birthDate, Gender gender,@JsonKey(name: 'school_id') int? schoolId, School? school, Measurement? measurement, int age,@JsonKey(name: 'age_month') int ageMonth,@JsonKey(name: 'age_month_total') int ageMonthTotal
});


@override $SchoolCopyWith<$Res>? get school;@override $MeasurementCopyWith<$Res>? get measurement;

}
/// @nodoc
class __$StudentCopyWithImpl<$Res>
    implements _$StudentCopyWith<$Res> {
  __$StudentCopyWithImpl(this._self, this._then);

  final _Student _self;
  final $Res Function(_Student) _then;

/// Create a copy of Student
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? birthDate = freezed,Object? gender = null,Object? schoolId = freezed,Object? school = freezed,Object? measurement = freezed,Object? age = null,Object? ageMonth = null,Object? ageMonthTotal = null,}) {
  return _then(_Student(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,birthDate: freezed == birthDate ? _self.birthDate : birthDate // ignore: cast_nullable_to_non_nullable
as DateTime?,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as Gender,schoolId: freezed == schoolId ? _self.schoolId : schoolId // ignore: cast_nullable_to_non_nullable
as int?,school: freezed == school ? _self.school : school // ignore: cast_nullable_to_non_nullable
as School?,measurement: freezed == measurement ? _self.measurement : measurement // ignore: cast_nullable_to_non_nullable
as Measurement?,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,ageMonth: null == ageMonth ? _self.ageMonth : ageMonth // ignore: cast_nullable_to_non_nullable
as int,ageMonthTotal: null == ageMonthTotal ? _self.ageMonthTotal : ageMonthTotal // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of Student
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SchoolCopyWith<$Res>? get school {
    if (_self.school == null) {
    return null;
  }

  return $SchoolCopyWith<$Res>(_self.school!, (value) {
    return _then(_self.copyWith(school: value));
  });
}/// Create a copy of Student
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
}
}

// dart format on
