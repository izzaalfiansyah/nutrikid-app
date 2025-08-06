// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'measurement_suggestion_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MeasurementSuggestionEvent {

 int get measurementId;
/// Create a copy of MeasurementSuggestionEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MeasurementSuggestionEventCopyWith<MeasurementSuggestionEvent> get copyWith => _$MeasurementSuggestionEventCopyWithImpl<MeasurementSuggestionEvent>(this as MeasurementSuggestionEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MeasurementSuggestionEvent&&(identical(other.measurementId, measurementId) || other.measurementId == measurementId));
}


@override
int get hashCode => Object.hash(runtimeType,measurementId);

@override
String toString() {
  return 'MeasurementSuggestionEvent(measurementId: $measurementId)';
}


}

/// @nodoc
abstract mixin class $MeasurementSuggestionEventCopyWith<$Res>  {
  factory $MeasurementSuggestionEventCopyWith(MeasurementSuggestionEvent value, $Res Function(MeasurementSuggestionEvent) _then) = _$MeasurementSuggestionEventCopyWithImpl;
@useResult
$Res call({
 int measurementId
});




}
/// @nodoc
class _$MeasurementSuggestionEventCopyWithImpl<$Res>
    implements $MeasurementSuggestionEventCopyWith<$Res> {
  _$MeasurementSuggestionEventCopyWithImpl(this._self, this._then);

  final MeasurementSuggestionEvent _self;
  final $Res Function(MeasurementSuggestionEvent) _then;

/// Create a copy of MeasurementSuggestionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? measurementId = null,}) {
  return _then(_self.copyWith(
measurementId: null == measurementId ? _self.measurementId : measurementId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [MeasurementSuggestionEvent].
extension MeasurementSuggestionEventPatterns on MeasurementSuggestionEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _LoadMeasurementSuggestions value)?  load,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoadMeasurementSuggestions() when load != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _LoadMeasurementSuggestions value)  load,}){
final _that = this;
switch (_that) {
case _LoadMeasurementSuggestions():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _LoadMeasurementSuggestions value)?  load,}){
final _that = this;
switch (_that) {
case _LoadMeasurementSuggestions() when load != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int measurementId)?  load,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoadMeasurementSuggestions() when load != null:
return load(_that.measurementId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int measurementId)  load,}) {final _that = this;
switch (_that) {
case _LoadMeasurementSuggestions():
return load(_that.measurementId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int measurementId)?  load,}) {final _that = this;
switch (_that) {
case _LoadMeasurementSuggestions() when load != null:
return load(_that.measurementId);case _:
  return null;

}
}

}

/// @nodoc


class _LoadMeasurementSuggestions implements MeasurementSuggestionEvent {
  const _LoadMeasurementSuggestions({required this.measurementId});
  

@override final  int measurementId;

/// Create a copy of MeasurementSuggestionEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadMeasurementSuggestionsCopyWith<_LoadMeasurementSuggestions> get copyWith => __$LoadMeasurementSuggestionsCopyWithImpl<_LoadMeasurementSuggestions>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadMeasurementSuggestions&&(identical(other.measurementId, measurementId) || other.measurementId == measurementId));
}


@override
int get hashCode => Object.hash(runtimeType,measurementId);

@override
String toString() {
  return 'MeasurementSuggestionEvent.load(measurementId: $measurementId)';
}


}

/// @nodoc
abstract mixin class _$LoadMeasurementSuggestionsCopyWith<$Res> implements $MeasurementSuggestionEventCopyWith<$Res> {
  factory _$LoadMeasurementSuggestionsCopyWith(_LoadMeasurementSuggestions value, $Res Function(_LoadMeasurementSuggestions) _then) = __$LoadMeasurementSuggestionsCopyWithImpl;
@override @useResult
$Res call({
 int measurementId
});




}
/// @nodoc
class __$LoadMeasurementSuggestionsCopyWithImpl<$Res>
    implements _$LoadMeasurementSuggestionsCopyWith<$Res> {
  __$LoadMeasurementSuggestionsCopyWithImpl(this._self, this._then);

  final _LoadMeasurementSuggestions _self;
  final $Res Function(_LoadMeasurementSuggestions) _then;

/// Create a copy of MeasurementSuggestionEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? measurementId = null,}) {
  return _then(_LoadMeasurementSuggestions(
measurementId: null == measurementId ? _self.measurementId : measurementId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$MeasurementSuggestionState {

 bool get isLoading; List<MeasurementSuggestion> get suggestions; String get errorMessage;
/// Create a copy of MeasurementSuggestionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MeasurementSuggestionStateCopyWith<MeasurementSuggestionState> get copyWith => _$MeasurementSuggestionStateCopyWithImpl<MeasurementSuggestionState>(this as MeasurementSuggestionState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MeasurementSuggestionState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other.suggestions, suggestions)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(suggestions),errorMessage);

@override
String toString() {
  return 'MeasurementSuggestionState(isLoading: $isLoading, suggestions: $suggestions, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $MeasurementSuggestionStateCopyWith<$Res>  {
  factory $MeasurementSuggestionStateCopyWith(MeasurementSuggestionState value, $Res Function(MeasurementSuggestionState) _then) = _$MeasurementSuggestionStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, List<MeasurementSuggestion> suggestions, String errorMessage
});




}
/// @nodoc
class _$MeasurementSuggestionStateCopyWithImpl<$Res>
    implements $MeasurementSuggestionStateCopyWith<$Res> {
  _$MeasurementSuggestionStateCopyWithImpl(this._self, this._then);

  final MeasurementSuggestionState _self;
  final $Res Function(MeasurementSuggestionState) _then;

/// Create a copy of MeasurementSuggestionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? suggestions = null,Object? errorMessage = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,suggestions: null == suggestions ? _self.suggestions : suggestions // ignore: cast_nullable_to_non_nullable
as List<MeasurementSuggestion>,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MeasurementSuggestionState].
extension MeasurementSuggestionStatePatterns on MeasurementSuggestionState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _MeasurementSuggestionState value)?  initial,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MeasurementSuggestionState() when initial != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _MeasurementSuggestionState value)  initial,}){
final _that = this;
switch (_that) {
case _MeasurementSuggestionState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _MeasurementSuggestionState value)?  initial,}){
final _that = this;
switch (_that) {
case _MeasurementSuggestionState() when initial != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( bool isLoading,  List<MeasurementSuggestion> suggestions,  String errorMessage)?  initial,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MeasurementSuggestionState() when initial != null:
return initial(_that.isLoading,_that.suggestions,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( bool isLoading,  List<MeasurementSuggestion> suggestions,  String errorMessage)  initial,}) {final _that = this;
switch (_that) {
case _MeasurementSuggestionState():
return initial(_that.isLoading,_that.suggestions,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( bool isLoading,  List<MeasurementSuggestion> suggestions,  String errorMessage)?  initial,}) {final _that = this;
switch (_that) {
case _MeasurementSuggestionState() when initial != null:
return initial(_that.isLoading,_that.suggestions,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _MeasurementSuggestionState implements MeasurementSuggestionState {
  const _MeasurementSuggestionState({this.isLoading = false, final  List<MeasurementSuggestion> suggestions = const [], this.errorMessage = ''}): _suggestions = suggestions;
  

@override@JsonKey() final  bool isLoading;
 final  List<MeasurementSuggestion> _suggestions;
@override@JsonKey() List<MeasurementSuggestion> get suggestions {
  if (_suggestions is EqualUnmodifiableListView) return _suggestions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_suggestions);
}

@override@JsonKey() final  String errorMessage;

/// Create a copy of MeasurementSuggestionState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MeasurementSuggestionStateCopyWith<_MeasurementSuggestionState> get copyWith => __$MeasurementSuggestionStateCopyWithImpl<_MeasurementSuggestionState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MeasurementSuggestionState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other._suggestions, _suggestions)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(_suggestions),errorMessage);

@override
String toString() {
  return 'MeasurementSuggestionState.initial(isLoading: $isLoading, suggestions: $suggestions, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$MeasurementSuggestionStateCopyWith<$Res> implements $MeasurementSuggestionStateCopyWith<$Res> {
  factory _$MeasurementSuggestionStateCopyWith(_MeasurementSuggestionState value, $Res Function(_MeasurementSuggestionState) _then) = __$MeasurementSuggestionStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, List<MeasurementSuggestion> suggestions, String errorMessage
});




}
/// @nodoc
class __$MeasurementSuggestionStateCopyWithImpl<$Res>
    implements _$MeasurementSuggestionStateCopyWith<$Res> {
  __$MeasurementSuggestionStateCopyWithImpl(this._self, this._then);

  final _MeasurementSuggestionState _self;
  final $Res Function(_MeasurementSuggestionState) _then;

/// Create a copy of MeasurementSuggestionState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? suggestions = null,Object? errorMessage = null,}) {
  return _then(_MeasurementSuggestionState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,suggestions: null == suggestions ? _self._suggestions : suggestions // ignore: cast_nullable_to_non_nullable
as List<MeasurementSuggestion>,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
