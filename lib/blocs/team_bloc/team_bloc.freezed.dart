// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'team_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TeamEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TeamEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TeamEvent()';
}


}

/// @nodoc
class $TeamEventCopyWith<$Res>  {
$TeamEventCopyWith(TeamEvent _, $Res Function(TeamEvent) __);
}


/// Adds pattern-matching-related methods to [TeamEvent].
extension TeamEventPatterns on TeamEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _LoadTeams value)?  load,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoadTeams() when load != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _LoadTeams value)  load,}){
final _that = this;
switch (_that) {
case _LoadTeams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _LoadTeams value)?  load,}){
final _that = this;
switch (_that) {
case _LoadTeams() when load != null:
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
case _LoadTeams() when load != null:
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
case _LoadTeams():
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
case _LoadTeams() when load != null:
return load();case _:
  return null;

}
}

}

/// @nodoc


class _LoadTeams implements TeamEvent {
  const _LoadTeams();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadTeams);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TeamEvent.load()';
}


}




/// @nodoc
mixin _$TeamState {

 bool get isLoading; List<Team> get teams; Team? get leader;
/// Create a copy of TeamState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TeamStateCopyWith<TeamState> get copyWith => _$TeamStateCopyWithImpl<TeamState>(this as TeamState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TeamState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other.teams, teams)&&(identical(other.leader, leader) || other.leader == leader));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(teams),leader);

@override
String toString() {
  return 'TeamState(isLoading: $isLoading, teams: $teams, leader: $leader)';
}


}

/// @nodoc
abstract mixin class $TeamStateCopyWith<$Res>  {
  factory $TeamStateCopyWith(TeamState value, $Res Function(TeamState) _then) = _$TeamStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, List<Team> teams, Team? leader
});


$TeamCopyWith<$Res>? get leader;

}
/// @nodoc
class _$TeamStateCopyWithImpl<$Res>
    implements $TeamStateCopyWith<$Res> {
  _$TeamStateCopyWithImpl(this._self, this._then);

  final TeamState _self;
  final $Res Function(TeamState) _then;

/// Create a copy of TeamState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? teams = null,Object? leader = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,teams: null == teams ? _self.teams : teams // ignore: cast_nullable_to_non_nullable
as List<Team>,leader: freezed == leader ? _self.leader : leader // ignore: cast_nullable_to_non_nullable
as Team?,
  ));
}
/// Create a copy of TeamState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TeamCopyWith<$Res>? get leader {
    if (_self.leader == null) {
    return null;
  }

  return $TeamCopyWith<$Res>(_self.leader!, (value) {
    return _then(_self.copyWith(leader: value));
  });
}
}


/// Adds pattern-matching-related methods to [TeamState].
extension TeamStatePatterns on TeamState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _TeamState value)?  initial,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TeamState() when initial != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _TeamState value)  initial,}){
final _that = this;
switch (_that) {
case _TeamState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _TeamState value)?  initial,}){
final _that = this;
switch (_that) {
case _TeamState() when initial != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( bool isLoading,  List<Team> teams,  Team? leader)?  initial,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TeamState() when initial != null:
return initial(_that.isLoading,_that.teams,_that.leader);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( bool isLoading,  List<Team> teams,  Team? leader)  initial,}) {final _that = this;
switch (_that) {
case _TeamState():
return initial(_that.isLoading,_that.teams,_that.leader);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( bool isLoading,  List<Team> teams,  Team? leader)?  initial,}) {final _that = this;
switch (_that) {
case _TeamState() when initial != null:
return initial(_that.isLoading,_that.teams,_that.leader);case _:
  return null;

}
}

}

/// @nodoc


class _TeamState implements TeamState {
  const _TeamState({this.isLoading = false, final  List<Team> teams = const [], this.leader}): _teams = teams;
  

@override@JsonKey() final  bool isLoading;
 final  List<Team> _teams;
@override@JsonKey() List<Team> get teams {
  if (_teams is EqualUnmodifiableListView) return _teams;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_teams);
}

@override final  Team? leader;

/// Create a copy of TeamState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TeamStateCopyWith<_TeamState> get copyWith => __$TeamStateCopyWithImpl<_TeamState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TeamState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other._teams, _teams)&&(identical(other.leader, leader) || other.leader == leader));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(_teams),leader);

@override
String toString() {
  return 'TeamState.initial(isLoading: $isLoading, teams: $teams, leader: $leader)';
}


}

/// @nodoc
abstract mixin class _$TeamStateCopyWith<$Res> implements $TeamStateCopyWith<$Res> {
  factory _$TeamStateCopyWith(_TeamState value, $Res Function(_TeamState) _then) = __$TeamStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, List<Team> teams, Team? leader
});


@override $TeamCopyWith<$Res>? get leader;

}
/// @nodoc
class __$TeamStateCopyWithImpl<$Res>
    implements _$TeamStateCopyWith<$Res> {
  __$TeamStateCopyWithImpl(this._self, this._then);

  final _TeamState _self;
  final $Res Function(_TeamState) _then;

/// Create a copy of TeamState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? teams = null,Object? leader = freezed,}) {
  return _then(_TeamState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,teams: null == teams ? _self._teams : teams // ignore: cast_nullable_to_non_nullable
as List<Team>,leader: freezed == leader ? _self.leader : leader // ignore: cast_nullable_to_non_nullable
as Team?,
  ));
}

/// Create a copy of TeamState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TeamCopyWith<$Res>? get leader {
    if (_self.leader == null) {
    return null;
  }

  return $TeamCopyWith<$Res>(_self.leader!, (value) {
    return _then(_self.copyWith(leader: value));
  });
}
}

// dart format on
