// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HistoryEvent {

 int? get page; bool? get isReset;
/// Create a copy of HistoryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HistoryEventCopyWith<HistoryEvent> get copyWith => _$HistoryEventCopyWithImpl<HistoryEvent>(this as HistoryEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HistoryEvent&&(identical(other.page, page) || other.page == page)&&(identical(other.isReset, isReset) || other.isReset == isReset));
}


@override
int get hashCode => Object.hash(runtimeType,page,isReset);

@override
String toString() {
  return 'HistoryEvent(page: $page, isReset: $isReset)';
}


}

/// @nodoc
abstract mixin class $HistoryEventCopyWith<$Res>  {
  factory $HistoryEventCopyWith(HistoryEvent value, $Res Function(HistoryEvent) _then) = _$HistoryEventCopyWithImpl;
@useResult
$Res call({
 int? page, bool? isReset
});




}
/// @nodoc
class _$HistoryEventCopyWithImpl<$Res>
    implements $HistoryEventCopyWith<$Res> {
  _$HistoryEventCopyWithImpl(this._self, this._then);

  final HistoryEvent _self;
  final $Res Function(HistoryEvent) _then;

/// Create a copy of HistoryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? page = freezed,Object? isReset = freezed,}) {
  return _then(_self.copyWith(
page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,isReset: freezed == isReset ? _self.isReset : isReset // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [HistoryEvent].
extension HistoryEventPatterns on HistoryEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _LoadMeasurement value)?  loadMeasurement,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoadMeasurement() when loadMeasurement != null:
return loadMeasurement(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _LoadMeasurement value)  loadMeasurement,}){
final _that = this;
switch (_that) {
case _LoadMeasurement():
return loadMeasurement(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _LoadMeasurement value)?  loadMeasurement,}){
final _that = this;
switch (_that) {
case _LoadMeasurement() when loadMeasurement != null:
return loadMeasurement(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int? page,  bool? isReset)?  loadMeasurement,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoadMeasurement() when loadMeasurement != null:
return loadMeasurement(_that.page,_that.isReset);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int? page,  bool? isReset)  loadMeasurement,}) {final _that = this;
switch (_that) {
case _LoadMeasurement():
return loadMeasurement(_that.page,_that.isReset);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int? page,  bool? isReset)?  loadMeasurement,}) {final _that = this;
switch (_that) {
case _LoadMeasurement() when loadMeasurement != null:
return loadMeasurement(_that.page,_that.isReset);case _:
  return null;

}
}

}

/// @nodoc


class _LoadMeasurement implements HistoryEvent {
  const _LoadMeasurement({this.page, this.isReset});
  

@override final  int? page;
@override final  bool? isReset;

/// Create a copy of HistoryEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadMeasurementCopyWith<_LoadMeasurement> get copyWith => __$LoadMeasurementCopyWithImpl<_LoadMeasurement>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadMeasurement&&(identical(other.page, page) || other.page == page)&&(identical(other.isReset, isReset) || other.isReset == isReset));
}


@override
int get hashCode => Object.hash(runtimeType,page,isReset);

@override
String toString() {
  return 'HistoryEvent.loadMeasurement(page: $page, isReset: $isReset)';
}


}

/// @nodoc
abstract mixin class _$LoadMeasurementCopyWith<$Res> implements $HistoryEventCopyWith<$Res> {
  factory _$LoadMeasurementCopyWith(_LoadMeasurement value, $Res Function(_LoadMeasurement) _then) = __$LoadMeasurementCopyWithImpl;
@override @useResult
$Res call({
 int? page, bool? isReset
});




}
/// @nodoc
class __$LoadMeasurementCopyWithImpl<$Res>
    implements _$LoadMeasurementCopyWith<$Res> {
  __$LoadMeasurementCopyWithImpl(this._self, this._then);

  final _LoadMeasurement _self;
  final $Res Function(_LoadMeasurement) _then;

/// Create a copy of HistoryEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = freezed,Object? isReset = freezed,}) {
  return _then(_LoadMeasurement(
page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,isReset: freezed == isReset ? _self.isReset : isReset // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

/// @nodoc
mixin _$HistoryState {

 int get total; List<Measurement> get measurements; int get page; bool get isLoading;
/// Create a copy of HistoryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HistoryStateCopyWith<HistoryState> get copyWith => _$HistoryStateCopyWithImpl<HistoryState>(this as HistoryState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HistoryState&&(identical(other.total, total) || other.total == total)&&const DeepCollectionEquality().equals(other.measurements, measurements)&&(identical(other.page, page) || other.page == page)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}


@override
int get hashCode => Object.hash(runtimeType,total,const DeepCollectionEquality().hash(measurements),page,isLoading);

@override
String toString() {
  return 'HistoryState(total: $total, measurements: $measurements, page: $page, isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class $HistoryStateCopyWith<$Res>  {
  factory $HistoryStateCopyWith(HistoryState value, $Res Function(HistoryState) _then) = _$HistoryStateCopyWithImpl;
@useResult
$Res call({
 int total, List<Measurement> measurements, int page, bool isLoading
});




}
/// @nodoc
class _$HistoryStateCopyWithImpl<$Res>
    implements $HistoryStateCopyWith<$Res> {
  _$HistoryStateCopyWithImpl(this._self, this._then);

  final HistoryState _self;
  final $Res Function(HistoryState) _then;

/// Create a copy of HistoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = null,Object? measurements = null,Object? page = null,Object? isLoading = null,}) {
  return _then(_self.copyWith(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,measurements: null == measurements ? _self.measurements : measurements // ignore: cast_nullable_to_non_nullable
as List<Measurement>,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [HistoryState].
extension HistoryStatePatterns on HistoryState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _HistoryState value)?  initial,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HistoryState() when initial != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _HistoryState value)  initial,}){
final _that = this;
switch (_that) {
case _HistoryState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _HistoryState value)?  initial,}){
final _that = this;
switch (_that) {
case _HistoryState() when initial != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int total,  List<Measurement> measurements,  int page,  bool isLoading)?  initial,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HistoryState() when initial != null:
return initial(_that.total,_that.measurements,_that.page,_that.isLoading);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int total,  List<Measurement> measurements,  int page,  bool isLoading)  initial,}) {final _that = this;
switch (_that) {
case _HistoryState():
return initial(_that.total,_that.measurements,_that.page,_that.isLoading);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int total,  List<Measurement> measurements,  int page,  bool isLoading)?  initial,}) {final _that = this;
switch (_that) {
case _HistoryState() when initial != null:
return initial(_that.total,_that.measurements,_that.page,_that.isLoading);case _:
  return null;

}
}

}

/// @nodoc


class _HistoryState implements HistoryState {
  const _HistoryState({this.total = 0, final  List<Measurement> measurements = const [], this.page = 1, this.isLoading = false}): _measurements = measurements;
  

@override@JsonKey() final  int total;
 final  List<Measurement> _measurements;
@override@JsonKey() List<Measurement> get measurements {
  if (_measurements is EqualUnmodifiableListView) return _measurements;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_measurements);
}

@override@JsonKey() final  int page;
@override@JsonKey() final  bool isLoading;

/// Create a copy of HistoryState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HistoryStateCopyWith<_HistoryState> get copyWith => __$HistoryStateCopyWithImpl<_HistoryState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HistoryState&&(identical(other.total, total) || other.total == total)&&const DeepCollectionEquality().equals(other._measurements, _measurements)&&(identical(other.page, page) || other.page == page)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}


@override
int get hashCode => Object.hash(runtimeType,total,const DeepCollectionEquality().hash(_measurements),page,isLoading);

@override
String toString() {
  return 'HistoryState.initial(total: $total, measurements: $measurements, page: $page, isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class _$HistoryStateCopyWith<$Res> implements $HistoryStateCopyWith<$Res> {
  factory _$HistoryStateCopyWith(_HistoryState value, $Res Function(_HistoryState) _then) = __$HistoryStateCopyWithImpl;
@override @useResult
$Res call({
 int total, List<Measurement> measurements, int page, bool isLoading
});




}
/// @nodoc
class __$HistoryStateCopyWithImpl<$Res>
    implements _$HistoryStateCopyWith<$Res> {
  __$HistoryStateCopyWithImpl(this._self, this._then);

  final _HistoryState _self;
  final $Res Function(_HistoryState) _then;

/// Create a copy of HistoryState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = null,Object? measurements = null,Object? page = null,Object? isLoading = null,}) {
  return _then(_HistoryState(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,measurements: null == measurements ? _self._measurements : measurements // ignore: cast_nullable_to_non_nullable
as List<Measurement>,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
