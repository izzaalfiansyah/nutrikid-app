// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppEvent()';
}


}

/// @nodoc
class $AppEventCopyWith<$Res>  {
$AppEventCopyWith(AppEvent _, $Res Function(AppEvent) __);
}


/// Adds pattern-matching-related methods to [AppEvent].
extension AppEventPatterns on AppEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _LoadStudent value)?  loadStudent,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoadStudent() when loadStudent != null:
return loadStudent(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _LoadStudent value)  loadStudent,}){
final _that = this;
switch (_that) {
case _LoadStudent():
return loadStudent(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _LoadStudent value)?  loadStudent,}){
final _that = this;
switch (_that) {
case _LoadStudent() when loadStudent != null:
return loadStudent(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loadStudent,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoadStudent() when loadStudent != null:
return loadStudent();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loadStudent,}) {final _that = this;
switch (_that) {
case _LoadStudent():
return loadStudent();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loadStudent,}) {final _that = this;
switch (_that) {
case _LoadStudent() when loadStudent != null:
return loadStudent();case _:
  return null;

}
}

}

/// @nodoc


class _LoadStudent implements AppEvent {
  const _LoadStudent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadStudent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppEvent.loadStudent()';
}


}




/// @nodoc
mixin _$AppState {

 List<Student> get students; int get studentTotal; bool get isStudentLoading;
/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppStateCopyWith<AppState> get copyWith => _$AppStateCopyWithImpl<AppState>(this as AppState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppState&&const DeepCollectionEquality().equals(other.students, students)&&(identical(other.studentTotal, studentTotal) || other.studentTotal == studentTotal)&&(identical(other.isStudentLoading, isStudentLoading) || other.isStudentLoading == isStudentLoading));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(students),studentTotal,isStudentLoading);

@override
String toString() {
  return 'AppState(students: $students, studentTotal: $studentTotal, isStudentLoading: $isStudentLoading)';
}


}

/// @nodoc
abstract mixin class $AppStateCopyWith<$Res>  {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) _then) = _$AppStateCopyWithImpl;
@useResult
$Res call({
 List<Student> students, int studentTotal, bool isStudentLoading
});




}
/// @nodoc
class _$AppStateCopyWithImpl<$Res>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._self, this._then);

  final AppState _self;
  final $Res Function(AppState) _then;

/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? students = null,Object? studentTotal = null,Object? isStudentLoading = null,}) {
  return _then(_self.copyWith(
students: null == students ? _self.students : students // ignore: cast_nullable_to_non_nullable
as List<Student>,studentTotal: null == studentTotal ? _self.studentTotal : studentTotal // ignore: cast_nullable_to_non_nullable
as int,isStudentLoading: null == isStudentLoading ? _self.isStudentLoading : isStudentLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [AppState].
extension AppStatePatterns on AppState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _AppState value)?  initial,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppState() when initial != null:
return initial(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _AppState value)  initial,}){
final _that = this;
switch (_that) {
case _AppState():
return initial(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _AppState value)?  initial,}){
final _that = this;
switch (_that) {
case _AppState() when initial != null:
return initial(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( List<Student> students,  int studentTotal,  bool isStudentLoading)?  initial,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppState() when initial != null:
return initial(_that.students,_that.studentTotal,_that.isStudentLoading);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( List<Student> students,  int studentTotal,  bool isStudentLoading)  initial,}) {final _that = this;
switch (_that) {
case _AppState():
return initial(_that.students,_that.studentTotal,_that.isStudentLoading);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( List<Student> students,  int studentTotal,  bool isStudentLoading)?  initial,}) {final _that = this;
switch (_that) {
case _AppState() when initial != null:
return initial(_that.students,_that.studentTotal,_that.isStudentLoading);case _:
  return null;

}
}

}

/// @nodoc


class _AppState implements AppState {
  const _AppState({final  List<Student> students = const [], this.studentTotal = 0, this.isStudentLoading = true}): _students = students;
  

 final  List<Student> _students;
@override@JsonKey() List<Student> get students {
  if (_students is EqualUnmodifiableListView) return _students;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_students);
}

@override@JsonKey() final  int studentTotal;
@override@JsonKey() final  bool isStudentLoading;

/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppStateCopyWith<_AppState> get copyWith => __$AppStateCopyWithImpl<_AppState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppState&&const DeepCollectionEquality().equals(other._students, _students)&&(identical(other.studentTotal, studentTotal) || other.studentTotal == studentTotal)&&(identical(other.isStudentLoading, isStudentLoading) || other.isStudentLoading == isStudentLoading));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_students),studentTotal,isStudentLoading);

@override
String toString() {
  return 'AppState.initial(students: $students, studentTotal: $studentTotal, isStudentLoading: $isStudentLoading)';
}


}

/// @nodoc
abstract mixin class _$AppStateCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$AppStateCopyWith(_AppState value, $Res Function(_AppState) _then) = __$AppStateCopyWithImpl;
@override @useResult
$Res call({
 List<Student> students, int studentTotal, bool isStudentLoading
});




}
/// @nodoc
class __$AppStateCopyWithImpl<$Res>
    implements _$AppStateCopyWith<$Res> {
  __$AppStateCopyWithImpl(this._self, this._then);

  final _AppState _self;
  final $Res Function(_AppState) _then;

/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? students = null,Object? studentTotal = null,Object? isStudentLoading = null,}) {
  return _then(_AppState(
students: null == students ? _self._students : students // ignore: cast_nullable_to_non_nullable
as List<Student>,studentTotal: null == studentTotal ? _self.studentTotal : studentTotal // ignore: cast_nullable_to_non_nullable
as int,isStudentLoading: null == isStudentLoading ? _self.isStudentLoading : isStudentLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
