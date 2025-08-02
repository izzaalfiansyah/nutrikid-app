// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'students_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StudentsResponse {

 int get total; List<Student> get students;
/// Create a copy of StudentsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StudentsResponseCopyWith<StudentsResponse> get copyWith => _$StudentsResponseCopyWithImpl<StudentsResponse>(this as StudentsResponse, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StudentsResponse&&(identical(other.total, total) || other.total == total)&&const DeepCollectionEquality().equals(other.students, students));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,const DeepCollectionEquality().hash(students));

@override
String toString() {
  return 'StudentsResponse(total: $total, students: $students)';
}


}

/// @nodoc
abstract mixin class $StudentsResponseCopyWith<$Res>  {
  factory $StudentsResponseCopyWith(StudentsResponse value, $Res Function(StudentsResponse) _then) = _$StudentsResponseCopyWithImpl;
@useResult
$Res call({
 int total, List<Student> students
});




}
/// @nodoc
class _$StudentsResponseCopyWithImpl<$Res>
    implements $StudentsResponseCopyWith<$Res> {
  _$StudentsResponseCopyWithImpl(this._self, this._then);

  final StudentsResponse _self;
  final $Res Function(StudentsResponse) _then;

/// Create a copy of StudentsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = null,Object? students = null,}) {
  return _then(_self.copyWith(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,students: null == students ? _self.students : students // ignore: cast_nullable_to_non_nullable
as List<Student>,
  ));
}

}


/// Adds pattern-matching-related methods to [StudentsResponse].
extension StudentsResponsePatterns on StudentsResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StudentsResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StudentsResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StudentsResponse value)  $default,){
final _that = this;
switch (_that) {
case _StudentsResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StudentsResponse value)?  $default,){
final _that = this;
switch (_that) {
case _StudentsResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int total,  List<Student> students)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StudentsResponse() when $default != null:
return $default(_that.total,_that.students);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int total,  List<Student> students)  $default,) {final _that = this;
switch (_that) {
case _StudentsResponse():
return $default(_that.total,_that.students);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int total,  List<Student> students)?  $default,) {final _that = this;
switch (_that) {
case _StudentsResponse() when $default != null:
return $default(_that.total,_that.students);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createToJson: false)

class _StudentsResponse implements StudentsResponse {
  const _StudentsResponse({this.total = 0, final  List<Student> students = const <Student>[]}): _students = students;
  factory _StudentsResponse.fromJson(Map<String, dynamic> json) => _$StudentsResponseFromJson(json);

@override@JsonKey() final  int total;
 final  List<Student> _students;
@override@JsonKey() List<Student> get students {
  if (_students is EqualUnmodifiableListView) return _students;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_students);
}


/// Create a copy of StudentsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StudentsResponseCopyWith<_StudentsResponse> get copyWith => __$StudentsResponseCopyWithImpl<_StudentsResponse>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StudentsResponse&&(identical(other.total, total) || other.total == total)&&const DeepCollectionEquality().equals(other._students, _students));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,const DeepCollectionEquality().hash(_students));

@override
String toString() {
  return 'StudentsResponse(total: $total, students: $students)';
}


}

/// @nodoc
abstract mixin class _$StudentsResponseCopyWith<$Res> implements $StudentsResponseCopyWith<$Res> {
  factory _$StudentsResponseCopyWith(_StudentsResponse value, $Res Function(_StudentsResponse) _then) = __$StudentsResponseCopyWithImpl;
@override @useResult
$Res call({
 int total, List<Student> students
});




}
/// @nodoc
class __$StudentsResponseCopyWithImpl<$Res>
    implements _$StudentsResponseCopyWith<$Res> {
  __$StudentsResponseCopyWithImpl(this._self, this._then);

  final _StudentsResponse _self;
  final $Res Function(_StudentsResponse) _then;

/// Create a copy of StudentsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = null,Object? students = null,}) {
  return _then(_StudentsResponse(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,students: null == students ? _self._students : students // ignore: cast_nullable_to_non_nullable
as List<Student>,
  ));
}


}

// dart format on
