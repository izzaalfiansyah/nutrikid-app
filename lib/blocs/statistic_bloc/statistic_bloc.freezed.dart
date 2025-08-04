// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'statistic_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StatisticEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StatisticEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StatisticEvent()';
}


}

/// @nodoc
class $StatisticEventCopyWith<$Res>  {
$StatisticEventCopyWith(StatisticEvent _, $Res Function(StatisticEvent) __);
}


/// Adds pattern-matching-related methods to [StatisticEvent].
extension StatisticEventPatterns on StatisticEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _LoadStatistic value)?  load,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoadStatistic() when load != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _LoadStatistic value)  load,}){
final _that = this;
switch (_that) {
case _LoadStatistic():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _LoadStatistic value)?  load,}){
final _that = this;
switch (_that) {
case _LoadStatistic() when load != null:
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
case _LoadStatistic() when load != null:
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
case _LoadStatistic():
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
case _LoadStatistic() when load != null:
return load();case _:
  return null;

}
}

}

/// @nodoc


class _LoadStatistic implements StatisticEvent {
  const _LoadStatistic();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadStatistic);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StatisticEvent.load()';
}


}




/// @nodoc
mixin _$StatisticState {

 List<StatisticChart> get measurementData; bool get isLoading;
/// Create a copy of StatisticState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StatisticStateCopyWith<StatisticState> get copyWith => _$StatisticStateCopyWithImpl<StatisticState>(this as StatisticState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StatisticState&&const DeepCollectionEquality().equals(other.measurementData, measurementData)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(measurementData),isLoading);

@override
String toString() {
  return 'StatisticState(measurementData: $measurementData, isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class $StatisticStateCopyWith<$Res>  {
  factory $StatisticStateCopyWith(StatisticState value, $Res Function(StatisticState) _then) = _$StatisticStateCopyWithImpl;
@useResult
$Res call({
 List<StatisticChart> measurementData, bool isLoading
});




}
/// @nodoc
class _$StatisticStateCopyWithImpl<$Res>
    implements $StatisticStateCopyWith<$Res> {
  _$StatisticStateCopyWithImpl(this._self, this._then);

  final StatisticState _self;
  final $Res Function(StatisticState) _then;

/// Create a copy of StatisticState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? measurementData = null,Object? isLoading = null,}) {
  return _then(_self.copyWith(
measurementData: null == measurementData ? _self.measurementData : measurementData // ignore: cast_nullable_to_non_nullable
as List<StatisticChart>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [StatisticState].
extension StatisticStatePatterns on StatisticState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _StatisticState value)?  initial,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StatisticState() when initial != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _StatisticState value)  initial,}){
final _that = this;
switch (_that) {
case _StatisticState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _StatisticState value)?  initial,}){
final _that = this;
switch (_that) {
case _StatisticState() when initial != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( List<StatisticChart> measurementData,  bool isLoading)?  initial,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StatisticState() when initial != null:
return initial(_that.measurementData,_that.isLoading);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( List<StatisticChart> measurementData,  bool isLoading)  initial,}) {final _that = this;
switch (_that) {
case _StatisticState():
return initial(_that.measurementData,_that.isLoading);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( List<StatisticChart> measurementData,  bool isLoading)?  initial,}) {final _that = this;
switch (_that) {
case _StatisticState() when initial != null:
return initial(_that.measurementData,_that.isLoading);case _:
  return null;

}
}

}

/// @nodoc


class _StatisticState implements StatisticState {
  const _StatisticState({final  List<StatisticChart> measurementData = const [], this.isLoading = false}): _measurementData = measurementData;
  

 final  List<StatisticChart> _measurementData;
@override@JsonKey() List<StatisticChart> get measurementData {
  if (_measurementData is EqualUnmodifiableListView) return _measurementData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_measurementData);
}

@override@JsonKey() final  bool isLoading;

/// Create a copy of StatisticState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StatisticStateCopyWith<_StatisticState> get copyWith => __$StatisticStateCopyWithImpl<_StatisticState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StatisticState&&const DeepCollectionEquality().equals(other._measurementData, _measurementData)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_measurementData),isLoading);

@override
String toString() {
  return 'StatisticState.initial(measurementData: $measurementData, isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class _$StatisticStateCopyWith<$Res> implements $StatisticStateCopyWith<$Res> {
  factory _$StatisticStateCopyWith(_StatisticState value, $Res Function(_StatisticState) _then) = __$StatisticStateCopyWithImpl;
@override @useResult
$Res call({
 List<StatisticChart> measurementData, bool isLoading
});




}
/// @nodoc
class __$StatisticStateCopyWithImpl<$Res>
    implements _$StatisticStateCopyWith<$Res> {
  __$StatisticStateCopyWithImpl(this._self, this._then);

  final _StatisticState _self;
  final $Res Function(_StatisticState) _then;

/// Create a copy of StatisticState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? measurementData = null,Object? isLoading = null,}) {
  return _then(_StatisticState(
measurementData: null == measurementData ? _self._measurementData : measurementData // ignore: cast_nullable_to_non_nullable
as List<StatisticChart>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
