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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _LoadStudent value)?  loadStudent,TResult Function( _LoadProfile value)?  loadProfile,TResult Function( _Logout value)?  logout,TResult Function( _SelectStudent value)?  selectStudent,TResult Function( _ShowAlert value)?  showAlert,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoadStudent() when loadStudent != null:
return loadStudent(_that);case _LoadProfile() when loadProfile != null:
return loadProfile(_that);case _Logout() when logout != null:
return logout(_that);case _SelectStudent() when selectStudent != null:
return selectStudent(_that);case _ShowAlert() when showAlert != null:
return showAlert(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _LoadStudent value)  loadStudent,required TResult Function( _LoadProfile value)  loadProfile,required TResult Function( _Logout value)  logout,required TResult Function( _SelectStudent value)  selectStudent,required TResult Function( _ShowAlert value)  showAlert,}){
final _that = this;
switch (_that) {
case _LoadStudent():
return loadStudent(_that);case _LoadProfile():
return loadProfile(_that);case _Logout():
return logout(_that);case _SelectStudent():
return selectStudent(_that);case _ShowAlert():
return showAlert(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _LoadStudent value)?  loadStudent,TResult? Function( _LoadProfile value)?  loadProfile,TResult? Function( _Logout value)?  logout,TResult? Function( _SelectStudent value)?  selectStudent,TResult? Function( _ShowAlert value)?  showAlert,}){
final _that = this;
switch (_that) {
case _LoadStudent() when loadStudent != null:
return loadStudent(_that);case _LoadProfile() when loadProfile != null:
return loadProfile(_that);case _Logout() when logout != null:
return logout(_that);case _SelectStudent() when selectStudent != null:
return selectStudent(_that);case _ShowAlert() when showAlert != null:
return showAlert(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loadStudent,TResult Function( void Function(Profile? profile)? callback)?  loadProfile,TResult Function( bool redirect)?  logout,TResult Function( Student student)?  selectStudent,TResult Function( String message)?  showAlert,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoadStudent() when loadStudent != null:
return loadStudent();case _LoadProfile() when loadProfile != null:
return loadProfile(_that.callback);case _Logout() when logout != null:
return logout(_that.redirect);case _SelectStudent() when selectStudent != null:
return selectStudent(_that.student);case _ShowAlert() when showAlert != null:
return showAlert(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loadStudent,required TResult Function( void Function(Profile? profile)? callback)  loadProfile,required TResult Function( bool redirect)  logout,required TResult Function( Student student)  selectStudent,required TResult Function( String message)  showAlert,}) {final _that = this;
switch (_that) {
case _LoadStudent():
return loadStudent();case _LoadProfile():
return loadProfile(_that.callback);case _Logout():
return logout(_that.redirect);case _SelectStudent():
return selectStudent(_that.student);case _ShowAlert():
return showAlert(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loadStudent,TResult? Function( void Function(Profile? profile)? callback)?  loadProfile,TResult? Function( bool redirect)?  logout,TResult? Function( Student student)?  selectStudent,TResult? Function( String message)?  showAlert,}) {final _that = this;
switch (_that) {
case _LoadStudent() when loadStudent != null:
return loadStudent();case _LoadProfile() when loadProfile != null:
return loadProfile(_that.callback);case _Logout() when logout != null:
return logout(_that.redirect);case _SelectStudent() when selectStudent != null:
return selectStudent(_that.student);case _ShowAlert() when showAlert != null:
return showAlert(_that.message);case _:
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
  const _Logout({this.redirect = true});
  

@JsonKey() final  bool redirect;

/// Create a copy of AppEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LogoutCopyWith<_Logout> get copyWith => __$LogoutCopyWithImpl<_Logout>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Logout&&(identical(other.redirect, redirect) || other.redirect == redirect));
}


@override
int get hashCode => Object.hash(runtimeType,redirect);

@override
String toString() {
  return 'AppEvent.logout(redirect: $redirect)';
}


}

/// @nodoc
abstract mixin class _$LogoutCopyWith<$Res> implements $AppEventCopyWith<$Res> {
  factory _$LogoutCopyWith(_Logout value, $Res Function(_Logout) _then) = __$LogoutCopyWithImpl;
@useResult
$Res call({
 bool redirect
});




}
/// @nodoc
class __$LogoutCopyWithImpl<$Res>
    implements _$LogoutCopyWith<$Res> {
  __$LogoutCopyWithImpl(this._self, this._then);

  final _Logout _self;
  final $Res Function(_Logout) _then;

/// Create a copy of AppEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? redirect = null,}) {
  return _then(_Logout(
redirect: null == redirect ? _self.redirect : redirect // ignore: cast_nullable_to_non_nullable
as bool,
  ));
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


class _ShowAlert implements AppEvent {
  const _ShowAlert({required this.message});
  

 final  String message;

/// Create a copy of AppEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShowAlertCopyWith<_ShowAlert> get copyWith => __$ShowAlertCopyWithImpl<_ShowAlert>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShowAlert&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AppEvent.showAlert(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ShowAlertCopyWith<$Res> implements $AppEventCopyWith<$Res> {
  factory _$ShowAlertCopyWith(_ShowAlert value, $Res Function(_ShowAlert) _then) = __$ShowAlertCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ShowAlertCopyWithImpl<$Res>
    implements _$ShowAlertCopyWith<$Res> {
  __$ShowAlertCopyWithImpl(this._self, this._then);

  final _ShowAlert _self;
  final $Res Function(_ShowAlert) _then;

/// Create a copy of AppEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ShowAlert(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$AppState {

 List<Student> get students; int get studentTotal; bool get isStudentLoading;// role
 String get accessToken; String get refreshToken; Profile? get profile;// selected student
 Student? get selectedStudent;// alert
 String get alertMessage; bool get alertTriggerer;
/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppStateCopyWith<AppState> get copyWith => _$AppStateCopyWithImpl<AppState>(this as AppState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppState&&const DeepCollectionEquality().equals(other.students, students)&&(identical(other.studentTotal, studentTotal) || other.studentTotal == studentTotal)&&(identical(other.isStudentLoading, isStudentLoading) || other.isStudentLoading == isStudentLoading)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.profile, profile) || other.profile == profile)&&(identical(other.selectedStudent, selectedStudent) || other.selectedStudent == selectedStudent)&&(identical(other.alertMessage, alertMessage) || other.alertMessage == alertMessage)&&(identical(other.alertTriggerer, alertTriggerer) || other.alertTriggerer == alertTriggerer));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(students),studentTotal,isStudentLoading,accessToken,refreshToken,profile,selectedStudent,alertMessage,alertTriggerer);

@override
String toString() {
  return 'AppState(students: $students, studentTotal: $studentTotal, isStudentLoading: $isStudentLoading, accessToken: $accessToken, refreshToken: $refreshToken, profile: $profile, selectedStudent: $selectedStudent, alertMessage: $alertMessage, alertTriggerer: $alertTriggerer)';
}


}

/// @nodoc
abstract mixin class $AppStateCopyWith<$Res>  {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) _then) = _$AppStateCopyWithImpl;
@useResult
$Res call({
 List<Student> students, int studentTotal, bool isStudentLoading, String accessToken, String refreshToken, Profile? profile, Student? selectedStudent, String alertMessage, bool alertTriggerer
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
@pragma('vm:prefer-inline') @override $Res call({Object? students = null,Object? studentTotal = null,Object? isStudentLoading = null,Object? accessToken = null,Object? refreshToken = null,Object? profile = freezed,Object? selectedStudent = freezed,Object? alertMessage = null,Object? alertTriggerer = null,}) {
  return _then(_self.copyWith(
students: null == students ? _self.students : students // ignore: cast_nullable_to_non_nullable
as List<Student>,studentTotal: null == studentTotal ? _self.studentTotal : studentTotal // ignore: cast_nullable_to_non_nullable
as int,isStudentLoading: null == isStudentLoading ? _self.isStudentLoading : isStudentLoading // ignore: cast_nullable_to_non_nullable
as bool,accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,refreshToken: null == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String,profile: freezed == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as Profile?,selectedStudent: freezed == selectedStudent ? _self.selectedStudent : selectedStudent // ignore: cast_nullable_to_non_nullable
as Student?,alertMessage: null == alertMessage ? _self.alertMessage : alertMessage // ignore: cast_nullable_to_non_nullable
as String,alertTriggerer: null == alertTriggerer ? _self.alertTriggerer : alertTriggerer // ignore: cast_nullable_to_non_nullable
as bool,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( List<Student> students,  int studentTotal,  bool isStudentLoading,  String accessToken,  String refreshToken,  Profile? profile,  Student? selectedStudent,  String alertMessage,  bool alertTriggerer)?  initial,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppState() when initial != null:
return initial(_that.students,_that.studentTotal,_that.isStudentLoading,_that.accessToken,_that.refreshToken,_that.profile,_that.selectedStudent,_that.alertMessage,_that.alertTriggerer);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( List<Student> students,  int studentTotal,  bool isStudentLoading,  String accessToken,  String refreshToken,  Profile? profile,  Student? selectedStudent,  String alertMessage,  bool alertTriggerer)  initial,}) {final _that = this;
switch (_that) {
case _AppState():
return initial(_that.students,_that.studentTotal,_that.isStudentLoading,_that.accessToken,_that.refreshToken,_that.profile,_that.selectedStudent,_that.alertMessage,_that.alertTriggerer);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( List<Student> students,  int studentTotal,  bool isStudentLoading,  String accessToken,  String refreshToken,  Profile? profile,  Student? selectedStudent,  String alertMessage,  bool alertTriggerer)?  initial,}) {final _that = this;
switch (_that) {
case _AppState() when initial != null:
return initial(_that.students,_that.studentTotal,_that.isStudentLoading,_that.accessToken,_that.refreshToken,_that.profile,_that.selectedStudent,_that.alertMessage,_that.alertTriggerer);case _:
  return null;

}
}

}

/// @nodoc


class _AppState implements AppState {
  const _AppState({final  List<Student> students = const [], this.studentTotal = 0, this.isStudentLoading = true, this.accessToken = '', this.refreshToken = '', this.profile, this.selectedStudent, this.alertMessage = '', this.alertTriggerer = false}): _students = students;
  

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
// alert
@override@JsonKey() final  String alertMessage;
@override@JsonKey() final  bool alertTriggerer;

/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppStateCopyWith<_AppState> get copyWith => __$AppStateCopyWithImpl<_AppState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppState&&const DeepCollectionEquality().equals(other._students, _students)&&(identical(other.studentTotal, studentTotal) || other.studentTotal == studentTotal)&&(identical(other.isStudentLoading, isStudentLoading) || other.isStudentLoading == isStudentLoading)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.profile, profile) || other.profile == profile)&&(identical(other.selectedStudent, selectedStudent) || other.selectedStudent == selectedStudent)&&(identical(other.alertMessage, alertMessage) || other.alertMessage == alertMessage)&&(identical(other.alertTriggerer, alertTriggerer) || other.alertTriggerer == alertTriggerer));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_students),studentTotal,isStudentLoading,accessToken,refreshToken,profile,selectedStudent,alertMessage,alertTriggerer);

@override
String toString() {
  return 'AppState.initial(students: $students, studentTotal: $studentTotal, isStudentLoading: $isStudentLoading, accessToken: $accessToken, refreshToken: $refreshToken, profile: $profile, selectedStudent: $selectedStudent, alertMessage: $alertMessage, alertTriggerer: $alertTriggerer)';
}


}

/// @nodoc
abstract mixin class _$AppStateCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$AppStateCopyWith(_AppState value, $Res Function(_AppState) _then) = __$AppStateCopyWithImpl;
@override @useResult
$Res call({
 List<Student> students, int studentTotal, bool isStudentLoading, String accessToken, String refreshToken, Profile? profile, Student? selectedStudent, String alertMessage, bool alertTriggerer
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
@override @pragma('vm:prefer-inline') $Res call({Object? students = null,Object? studentTotal = null,Object? isStudentLoading = null,Object? accessToken = null,Object? refreshToken = null,Object? profile = freezed,Object? selectedStudent = freezed,Object? alertMessage = null,Object? alertTriggerer = null,}) {
  return _then(_AppState(
students: null == students ? _self._students : students // ignore: cast_nullable_to_non_nullable
as List<Student>,studentTotal: null == studentTotal ? _self.studentTotal : studentTotal // ignore: cast_nullable_to_non_nullable
as int,isStudentLoading: null == isStudentLoading ? _self.isStudentLoading : isStudentLoading // ignore: cast_nullable_to_non_nullable
as bool,accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,refreshToken: null == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String,profile: freezed == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as Profile?,selectedStudent: freezed == selectedStudent ? _self.selectedStudent : selectedStudent // ignore: cast_nullable_to_non_nullable
as Student?,alertMessage: null == alertMessage ? _self.alertMessage : alertMessage // ignore: cast_nullable_to_non_nullable
as String,alertTriggerer: null == alertTriggerer ? _self.alertTriggerer : alertTriggerer // ignore: cast_nullable_to_non_nullable
as bool,
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
