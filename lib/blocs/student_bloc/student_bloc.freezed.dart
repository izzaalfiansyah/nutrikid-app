// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StudentEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StudentEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StudentEvent()';
}


}

/// @nodoc
class $StudentEventCopyWith<$Res>  {
$StudentEventCopyWith(StudentEvent _, $Res Function(StudentEvent) __);
}


/// Adds pattern-matching-related methods to [StudentEvent].
extension StudentEventPatterns on StudentEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _LoadStudent value)?  load,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoadStudent() when load != null:
return load(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _LoadStudent value)  load,}){
final _that = this;
switch (_that) {
case _LoadStudent():
return load(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _LoadStudent value)?  load,}){
final _that = this;
switch (_that) {
case _LoadStudent() when load != null:
return load(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  load,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoadStudent() when load != null:
return load();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  load,}) {final _that = this;
switch (_that) {
case _LoadStudent():
return load();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  load,}) {final _that = this;
switch (_that) {
case _LoadStudent() when load != null:
return load();case _:
  return null;

}
}

}

/// @nodoc


class _LoadStudent implements StudentEvent {
  const _LoadStudent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadStudent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StudentEvent.load()';
}


}




/// @nodoc
mixin _$StudentState {

 bool get isLoading; Student get student;
/// Create a copy of StudentState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StudentStateCopyWith<StudentState> get copyWith => _$StudentStateCopyWithImpl<StudentState>(this as StudentState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StudentState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.student, student) || other.student == student));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,student);

@override
String toString() {
  return 'StudentState(isLoading: $isLoading, student: $student)';
}


}

/// @nodoc
abstract mixin class $StudentStateCopyWith<$Res>  {
  factory $StudentStateCopyWith(StudentState value, $Res Function(StudentState) _then) = _$StudentStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, Student student
});


$StudentCopyWith<$Res> get student;

}
/// @nodoc
class _$StudentStateCopyWithImpl<$Res>
    implements $StudentStateCopyWith<$Res> {
  _$StudentStateCopyWithImpl(this._self, this._then);

  final StudentState _self;
  final $Res Function(StudentState) _then;

/// Create a copy of StudentState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? student = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,student: null == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as Student,
  ));
}
/// Create a copy of StudentState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StudentCopyWith<$Res> get student {
  
  return $StudentCopyWith<$Res>(_self.student, (value) {
    return _then(_self.copyWith(student: value));
  });
}
}


/// Adds pattern-matching-related methods to [StudentState].
extension StudentStatePatterns on StudentState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _StudentState value)?  initial,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StudentState() when initial != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _StudentState value)  initial,}){
final _that = this;
switch (_that) {
case _StudentState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _StudentState value)?  initial,}){
final _that = this;
switch (_that) {
case _StudentState() when initial != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( bool isLoading,  Student student)?  initial,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StudentState() when initial != null:
return initial(_that.isLoading,_that.student);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( bool isLoading,  Student student)  initial,}) {final _that = this;
switch (_that) {
case _StudentState():
return initial(_that.isLoading,_that.student);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( bool isLoading,  Student student)?  initial,}) {final _that = this;
switch (_that) {
case _StudentState() when initial != null:
return initial(_that.isLoading,_that.student);case _:
  return null;

}
}

}

/// @nodoc


class _StudentState implements StudentState {
  const _StudentState({this.isLoading = false, this.student = const Student()});
  

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  Student student;

/// Create a copy of StudentState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StudentStateCopyWith<_StudentState> get copyWith => __$StudentStateCopyWithImpl<_StudentState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StudentState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.student, student) || other.student == student));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,student);

@override
String toString() {
  return 'StudentState.initial(isLoading: $isLoading, student: $student)';
}


}

/// @nodoc
abstract mixin class _$StudentStateCopyWith<$Res> implements $StudentStateCopyWith<$Res> {
  factory _$StudentStateCopyWith(_StudentState value, $Res Function(_StudentState) _then) = __$StudentStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, Student student
});


@override $StudentCopyWith<$Res> get student;

}
/// @nodoc
class __$StudentStateCopyWithImpl<$Res>
    implements _$StudentStateCopyWith<$Res> {
  __$StudentStateCopyWithImpl(this._self, this._then);

  final _StudentState _self;
  final $Res Function(_StudentState) _then;

/// Create a copy of StudentState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? student = null,}) {
  return _then(_StudentState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,student: null == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as Student,
  ));
}

/// Create a copy of StudentState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StudentCopyWith<$Res> get student {
  
  return $StudentCopyWith<$Res>(_self.student, (value) {
    return _then(_self.copyWith(student: value));
  });
}
}

// dart format on
