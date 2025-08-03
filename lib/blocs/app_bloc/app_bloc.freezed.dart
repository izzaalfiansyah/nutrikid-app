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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _LoadStudent value)?  loadStudent,TResult Function( _LoadProfile value)?  loadProfile,TResult Function( _Logout value)?  logout,TResult Function( _SelectStudent value)?  selectStudent,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoadStudent() when loadStudent != null:
return loadStudent(_that);case _LoadProfile() when loadProfile != null:
return loadProfile(_that);case _Logout() when logout != null:
return logout(_that);case _SelectStudent() when selectStudent != null:
return selectStudent(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _LoadStudent value)  loadStudent,required TResult Function( _LoadProfile value)  loadProfile,required TResult Function( _Logout value)  logout,required TResult Function( _SelectStudent value)  selectStudent,}){
final _that = this;
switch (_that) {
case _LoadStudent():
return loadStudent(_that);case _LoadProfile():
return loadProfile(_that);case _Logout():
return logout(_that);case _SelectStudent():
return selectStudent(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _LoadStudent value)?  loadStudent,TResult? Function( _LoadProfile value)?  loadProfile,TResult? Function( _Logout value)?  logout,TResult? Function( _SelectStudent value)?  selectStudent,}){
final _that = this;
switch (_that) {
case _LoadStudent() when loadStudent != null:
return loadStudent(_that);case _LoadProfile() when loadProfile != null:
return loadProfile(_that);case _Logout() when logout != null:
return logout(_that);case _SelectStudent() when selectStudent != null:
return selectStudent(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loadStudent,TResult Function( void Function(Profile? profile)? callback)?  loadProfile,TResult Function()?  logout,TResult Function( Student student)?  selectStudent,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoadStudent() when loadStudent != null:
return loadStudent();case _LoadProfile() when loadProfile != null:
return loadProfile(_that.callback);case _Logout() when logout != null:
return logout();case _SelectStudent() when selectStudent != null:
return selectStudent(_that.student);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loadStudent,required TResult Function( void Function(Profile? profile)? callback)  loadProfile,required TResult Function()  logout,required TResult Function( Student student)  selectStudent,}) {final _that = this;
switch (_that) {
case _LoadStudent():
return loadStudent();case _LoadProfile():
return loadProfile(_that.callback);case _Logout():
return logout();case _SelectStudent():
return selectStudent(_that.student);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loadStudent,TResult? Function( void Function(Profile? profile)? callback)?  loadProfile,TResult? Function()?  logout,TResult? Function( Student student)?  selectStudent,}) {final _that = this;
switch (_that) {
case _LoadStudent() when loadStudent != null:
return loadStudent();case _LoadProfile() when loadProfile != null:
return loadProfile(_that.callback);case _Logout() when logout != null:
return logout();case _SelectStudent() when selectStudent != null:
return selectStudent(_that.student);case _:
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


class _LoadProfile implements AppEvent {
  const _LoadProfile({this.callback});
  

 final  void Function(Profile? profile)? callback;

/// Create a copy of AppEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadProfileCopyWith<_LoadProfile> get copyWith => __$LoadProfileCopyWithImpl<_LoadProfile>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadProfile&&(identical(other.callback, callback) || other.callback == callback));
}


@override
int get hashCode => Object.hash(runtimeType,callback);

@override
String toString() {
  return 'AppEvent.loadProfile(callback: $callback)';
}


}

/// @nodoc
abstract mixin class _$LoadProfileCopyWith<$Res> implements $AppEventCopyWith<$Res> {
  factory _$LoadProfileCopyWith(_LoadProfile value, $Res Function(_LoadProfile) _then) = __$LoadProfileCopyWithImpl;
@useResult
$Res call({
 void Function(Profile? profile)? callback
});




}
/// @nodoc
class __$LoadProfileCopyWithImpl<$Res>
    implements _$LoadProfileCopyWith<$Res> {
  __$LoadProfileCopyWithImpl(this._self, this._then);

  final _LoadProfile _self;
  final $Res Function(_LoadProfile) _then;

/// Create a copy of AppEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? callback = freezed,}) {
  return _then(_LoadProfile(
callback: freezed == callback ? _self.callback : callback // ignore: cast_nullable_to_non_nullable
as void Function(Profile? profile)?,
  ));
}


}

/// @nodoc


class _Logout implements AppEvent {
  const _Logout();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Logout);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppEvent.logout()';
}


}




/// @nodoc


class _SelectStudent implements AppEvent {
  const _SelectStudent(this.student);
  

 final  Student student;

/// Create a copy of AppEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SelectStudentCopyWith<_SelectStudent> get copyWith => __$SelectStudentCopyWithImpl<_SelectStudent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SelectStudent&&(identical(other.student, student) || other.student == student));
}


@override
int get hashCode => Object.hash(runtimeType,student);

@override
String toString() {
  return 'AppEvent.selectStudent(student: $student)';
}


}

/// @nodoc
abstract mixin class _$SelectStudentCopyWith<$Res> implements $AppEventCopyWith<$Res> {
  factory _$SelectStudentCopyWith(_SelectStudent value, $Res Function(_SelectStudent) _then) = __$SelectStudentCopyWithImpl;
@useResult
$Res call({
 Student student
});


$StudentCopyWith<$Res> get student;

}
/// @nodoc
class __$SelectStudentCopyWithImpl<$Res>
    implements _$SelectStudentCopyWith<$Res> {
  __$SelectStudentCopyWithImpl(this._self, this._then);

  final _SelectStudent _self;
  final $Res Function(_SelectStudent) _then;

/// Create a copy of AppEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? student = null,}) {
  return _then(_SelectStudent(
null == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as Student,
  ));
}

/// Create a copy of AppEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StudentCopyWith<$Res> get student {
  
  return $StudentCopyWith<$Res>(_self.student, (value) {
    return _then(_self.copyWith(student: value));
  });
}
}

/// @nodoc
mixin _$AppState {

 List<Student> get students; int get studentTotal; bool get isStudentLoading;// role
 String get accessToken; String get refreshToken; Profile? get profile;// selected student
 Student? get selectedStudent;
/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppStateCopyWith<AppState> get copyWith => _$AppStateCopyWithImpl<AppState>(this as AppState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppState&&const DeepCollectionEquality().equals(other.students, students)&&(identical(other.studentTotal, studentTotal) || other.studentTotal == studentTotal)&&(identical(other.isStudentLoading, isStudentLoading) || other.isStudentLoading == isStudentLoading)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.profile, profile) || other.profile == profile)&&(identical(other.selectedStudent, selectedStudent) || other.selectedStudent == selectedStudent));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(students),studentTotal,isStudentLoading,accessToken,refreshToken,profile,selectedStudent);

@override
String toString() {
  return 'AppState(students: $students, studentTotal: $studentTotal, isStudentLoading: $isStudentLoading, accessToken: $accessToken, refreshToken: $refreshToken, profile: $profile, selectedStudent: $selectedStudent)';
}


}

/// @nodoc
abstract mixin class $AppStateCopyWith<$Res>  {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) _then) = _$AppStateCopyWithImpl;
@useResult
$Res call({
 List<Student> students, int studentTotal, bool isStudentLoading, String accessToken, String refreshToken, Profile? profile, Student? selectedStudent
});


$ProfileCopyWith<$Res>? get profile;$StudentCopyWith<$Res>? get selectedStudent;

}
/// @nodoc
class _$AppStateCopyWithImpl<$Res>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._self, this._then);

  final AppState _self;
  final $Res Function(AppState) _then;

/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? students = null,Object? studentTotal = null,Object? isStudentLoading = null,Object? accessToken = null,Object? refreshToken = null,Object? profile = freezed,Object? selectedStudent = freezed,}) {
  return _then(_self.copyWith(
students: null == students ? _self.students : students // ignore: cast_nullable_to_non_nullable
as List<Student>,studentTotal: null == studentTotal ? _self.studentTotal : studentTotal // ignore: cast_nullable_to_non_nullable
as int,isStudentLoading: null == isStudentLoading ? _self.isStudentLoading : isStudentLoading // ignore: cast_nullable_to_non_nullable
as bool,accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,refreshToken: null == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String,profile: freezed == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as Profile?,selectedStudent: freezed == selectedStudent ? _self.selectedStudent : selectedStudent // ignore: cast_nullable_to_non_nullable
as Student?,
  ));
}
/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileCopyWith<$Res>? get profile {
    if (_self.profile == null) {
    return null;
  }

  return $ProfileCopyWith<$Res>(_self.profile!, (value) {
    return _then(_self.copyWith(profile: value));
  });
}/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StudentCopyWith<$Res>? get selectedStudent {
    if (_self.selectedStudent == null) {
    return null;
  }

  return $StudentCopyWith<$Res>(_self.selectedStudent!, (value) {
    return _then(_self.copyWith(selectedStudent: value));
  });
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( List<Student> students,  int studentTotal,  bool isStudentLoading,  String accessToken,  String refreshToken,  Profile? profile,  Student? selectedStudent)?  initial,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppState() when initial != null:
return initial(_that.students,_that.studentTotal,_that.isStudentLoading,_that.accessToken,_that.refreshToken,_that.profile,_that.selectedStudent);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( List<Student> students,  int studentTotal,  bool isStudentLoading,  String accessToken,  String refreshToken,  Profile? profile,  Student? selectedStudent)  initial,}) {final _that = this;
switch (_that) {
case _AppState():
return initial(_that.students,_that.studentTotal,_that.isStudentLoading,_that.accessToken,_that.refreshToken,_that.profile,_that.selectedStudent);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( List<Student> students,  int studentTotal,  bool isStudentLoading,  String accessToken,  String refreshToken,  Profile? profile,  Student? selectedStudent)?  initial,}) {final _that = this;
switch (_that) {
case _AppState() when initial != null:
return initial(_that.students,_that.studentTotal,_that.isStudentLoading,_that.accessToken,_that.refreshToken,_that.profile,_that.selectedStudent);case _:
  return null;

}
}

}

/// @nodoc


class _AppState implements AppState {
  const _AppState({final  List<Student> students = const [], this.studentTotal = 0, this.isStudentLoading = true, this.accessToken = '', this.refreshToken = '', this.profile, this.selectedStudent}): _students = students;
  

 final  List<Student> _students;
@override@JsonKey() List<Student> get students {
  if (_students is EqualUnmodifiableListView) return _students;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_students);
}

@override@JsonKey() final  int studentTotal;
@override@JsonKey() final  bool isStudentLoading;
// role
@override@JsonKey() final  String accessToken;
@override@JsonKey() final  String refreshToken;
@override final  Profile? profile;
// selected student
@override final  Student? selectedStudent;

/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppStateCopyWith<_AppState> get copyWith => __$AppStateCopyWithImpl<_AppState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppState&&const DeepCollectionEquality().equals(other._students, _students)&&(identical(other.studentTotal, studentTotal) || other.studentTotal == studentTotal)&&(identical(other.isStudentLoading, isStudentLoading) || other.isStudentLoading == isStudentLoading)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.profile, profile) || other.profile == profile)&&(identical(other.selectedStudent, selectedStudent) || other.selectedStudent == selectedStudent));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_students),studentTotal,isStudentLoading,accessToken,refreshToken,profile,selectedStudent);

@override
String toString() {
  return 'AppState.initial(students: $students, studentTotal: $studentTotal, isStudentLoading: $isStudentLoading, accessToken: $accessToken, refreshToken: $refreshToken, profile: $profile, selectedStudent: $selectedStudent)';
}


}

/// @nodoc
abstract mixin class _$AppStateCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$AppStateCopyWith(_AppState value, $Res Function(_AppState) _then) = __$AppStateCopyWithImpl;
@override @useResult
$Res call({
 List<Student> students, int studentTotal, bool isStudentLoading, String accessToken, String refreshToken, Profile? profile, Student? selectedStudent
});


@override $ProfileCopyWith<$Res>? get profile;@override $StudentCopyWith<$Res>? get selectedStudent;

}
/// @nodoc
class __$AppStateCopyWithImpl<$Res>
    implements _$AppStateCopyWith<$Res> {
  __$AppStateCopyWithImpl(this._self, this._then);

  final _AppState _self;
  final $Res Function(_AppState) _then;

/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? students = null,Object? studentTotal = null,Object? isStudentLoading = null,Object? accessToken = null,Object? refreshToken = null,Object? profile = freezed,Object? selectedStudent = freezed,}) {
  return _then(_AppState(
students: null == students ? _self._students : students // ignore: cast_nullable_to_non_nullable
as List<Student>,studentTotal: null == studentTotal ? _self.studentTotal : studentTotal // ignore: cast_nullable_to_non_nullable
as int,isStudentLoading: null == isStudentLoading ? _self.isStudentLoading : isStudentLoading // ignore: cast_nullable_to_non_nullable
as bool,accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,refreshToken: null == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String,profile: freezed == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as Profile?,selectedStudent: freezed == selectedStudent ? _self.selectedStudent : selectedStudent // ignore: cast_nullable_to_non_nullable
as Student?,
  ));
}

/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileCopyWith<$Res>? get profile {
    if (_self.profile == null) {
    return null;
  }

  return $ProfileCopyWith<$Res>(_self.profile!, (value) {
    return _then(_self.copyWith(profile: value));
  });
}/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StudentCopyWith<$Res>? get selectedStudent {
    if (_self.selectedStudent == null) {
    return null;
  }

  return $StudentCopyWith<$Res>(_self.selectedStudent!, (value) {
    return _then(_self.copyWith(selectedStudent: value));
  });
}
}

// dart format on
