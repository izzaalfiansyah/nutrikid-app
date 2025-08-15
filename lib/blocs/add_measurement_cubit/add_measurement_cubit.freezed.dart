// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_measurement_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddMeasurementState {

 bool get isLoading; double get height; double get weight; DateTime? get createdAt; String get errorMessage;
/// Create a copy of AddMeasurementState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddMeasurementStateCopyWith<AddMeasurementState> get copyWith => _$AddMeasurementStateCopyWithImpl<AddMeasurementState>(this as AddMeasurementState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddMeasurementState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.height, height) || other.height == height)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,height,weight,createdAt,errorMessage);

@override
String toString() {
  return 'AddMeasurementState(isLoading: $isLoading, height: $height, weight: $weight, createdAt: $createdAt, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $AddMeasurementStateCopyWith<$Res>  {
  factory $AddMeasurementStateCopyWith(AddMeasurementState value, $Res Function(AddMeasurementState) _then) = _$AddMeasurementStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, double height, double weight, DateTime? createdAt, String errorMessage
});




}
/// @nodoc
class _$AddMeasurementStateCopyWithImpl<$Res>
    implements $AddMeasurementStateCopyWith<$Res> {
  _$AddMeasurementStateCopyWithImpl(this._self, this._then);

  final AddMeasurementState _self;
  final $Res Function(AddMeasurementState) _then;

/// Create a copy of AddMeasurementState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? height = null,Object? weight = null,Object? createdAt = freezed,Object? errorMessage = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as double,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AddMeasurementState].
extension AddMeasurementStatePatterns on AddMeasurementState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _AddMeasurementState value)?  initial,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddMeasurementState() when initial != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _AddMeasurementState value)  initial,}){
final _that = this;
switch (_that) {
case _AddMeasurementState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _AddMeasurementState value)?  initial,}){
final _that = this;
switch (_that) {
case _AddMeasurementState() when initial != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( bool isLoading,  double height,  double weight,  DateTime? createdAt,  String errorMessage)?  initial,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddMeasurementState() when initial != null:
return initial(_that.isLoading,_that.height,_that.weight,_that.createdAt,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( bool isLoading,  double height,  double weight,  DateTime? createdAt,  String errorMessage)  initial,}) {final _that = this;
switch (_that) {
case _AddMeasurementState():
return initial(_that.isLoading,_that.height,_that.weight,_that.createdAt,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( bool isLoading,  double height,  double weight,  DateTime? createdAt,  String errorMessage)?  initial,}) {final _that = this;
switch (_that) {
case _AddMeasurementState() when initial != null:
return initial(_that.isLoading,_that.height,_that.weight,_that.createdAt,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _AddMeasurementState implements AddMeasurementState {
  const _AddMeasurementState({this.isLoading = false, this.height = 0.0, this.weight = 0.0, this.createdAt, this.errorMessage = ''});
  

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  double height;
@override@JsonKey() final  double weight;
@override final  DateTime? createdAt;
@override@JsonKey() final  String errorMessage;

/// Create a copy of AddMeasurementState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddMeasurementStateCopyWith<_AddMeasurementState> get copyWith => __$AddMeasurementStateCopyWithImpl<_AddMeasurementState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddMeasurementState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.height, height) || other.height == height)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,height,weight,createdAt,errorMessage);

@override
String toString() {
  return 'AddMeasurementState.initial(isLoading: $isLoading, height: $height, weight: $weight, createdAt: $createdAt, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$AddMeasurementStateCopyWith<$Res> implements $AddMeasurementStateCopyWith<$Res> {
  factory _$AddMeasurementStateCopyWith(_AddMeasurementState value, $Res Function(_AddMeasurementState) _then) = __$AddMeasurementStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, double height, double weight, DateTime? createdAt, String errorMessage
});




}
/// @nodoc
class __$AddMeasurementStateCopyWithImpl<$Res>
    implements _$AddMeasurementStateCopyWith<$Res> {
  __$AddMeasurementStateCopyWithImpl(this._self, this._then);

  final _AddMeasurementState _self;
  final $Res Function(_AddMeasurementState) _then;

/// Create a copy of AddMeasurementState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? height = null,Object? weight = null,Object? createdAt = freezed,Object? errorMessage = null,}) {
  return _then(_AddMeasurementState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as double,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
