// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_salary_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddSalaryState {

 Salary get salaryIncome; TextEditingController? get controller; DateTime? get date; bool get isValid; bool get isLoading; bool get isSuccess; bool get isError; String? get errorMessage;
/// Create a copy of AddSalaryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddSalaryStateCopyWith<AddSalaryState> get copyWith => _$AddSalaryStateCopyWithImpl<AddSalaryState>(this as AddSalaryState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddSalaryState&&(identical(other.salaryIncome, salaryIncome) || other.salaryIncome == salaryIncome)&&(identical(other.controller, controller) || other.controller == controller)&&(identical(other.date, date) || other.date == date)&&(identical(other.isValid, isValid) || other.isValid == isValid)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.isError, isError) || other.isError == isError)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,salaryIncome,controller,date,isValid,isLoading,isSuccess,isError,errorMessage);

@override
String toString() {
  return 'AddSalaryState(salaryIncome: $salaryIncome, controller: $controller, date: $date, isValid: $isValid, isLoading: $isLoading, isSuccess: $isSuccess, isError: $isError, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $AddSalaryStateCopyWith<$Res>  {
  factory $AddSalaryStateCopyWith(AddSalaryState value, $Res Function(AddSalaryState) _then) = _$AddSalaryStateCopyWithImpl;
@useResult
$Res call({
 Salary salaryIncome, TextEditingController? controller, DateTime? date, bool isValid, bool isLoading, bool isSuccess, bool isError, String? errorMessage
});




}
/// @nodoc
class _$AddSalaryStateCopyWithImpl<$Res>
    implements $AddSalaryStateCopyWith<$Res> {
  _$AddSalaryStateCopyWithImpl(this._self, this._then);

  final AddSalaryState _self;
  final $Res Function(AddSalaryState) _then;

/// Create a copy of AddSalaryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? salaryIncome = null,Object? controller = freezed,Object? date = freezed,Object? isValid = null,Object? isLoading = null,Object? isSuccess = null,Object? isError = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
salaryIncome: null == salaryIncome ? _self.salaryIncome : salaryIncome // ignore: cast_nullable_to_non_nullable
as Salary,controller: freezed == controller ? _self.controller : controller // ignore: cast_nullable_to_non_nullable
as TextEditingController?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,isValid: null == isValid ? _self.isValid : isValid // ignore: cast_nullable_to_non_nullable
as bool,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AddSalaryState].
extension AddSalaryStatePatterns on AddSalaryState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddSalaryState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddSalaryState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddSalaryState value)  $default,){
final _that = this;
switch (_that) {
case _AddSalaryState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddSalaryState value)?  $default,){
final _that = this;
switch (_that) {
case _AddSalaryState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Salary salaryIncome,  TextEditingController? controller,  DateTime? date,  bool isValid,  bool isLoading,  bool isSuccess,  bool isError,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddSalaryState() when $default != null:
return $default(_that.salaryIncome,_that.controller,_that.date,_that.isValid,_that.isLoading,_that.isSuccess,_that.isError,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Salary salaryIncome,  TextEditingController? controller,  DateTime? date,  bool isValid,  bool isLoading,  bool isSuccess,  bool isError,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _AddSalaryState():
return $default(_that.salaryIncome,_that.controller,_that.date,_that.isValid,_that.isLoading,_that.isSuccess,_that.isError,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Salary salaryIncome,  TextEditingController? controller,  DateTime? date,  bool isValid,  bool isLoading,  bool isSuccess,  bool isError,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _AddSalaryState() when $default != null:
return $default(_that.salaryIncome,_that.controller,_that.date,_that.isValid,_that.isLoading,_that.isSuccess,_that.isError,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _AddSalaryState implements AddSalaryState {
   _AddSalaryState({this.salaryIncome = const Salary.pure(), this.controller, this.date, this.isValid = false, this.isLoading = false, this.isSuccess = false, this.isError = false, this.errorMessage});
  

@override@JsonKey() final  Salary salaryIncome;
@override final  TextEditingController? controller;
@override final  DateTime? date;
@override@JsonKey() final  bool isValid;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isSuccess;
@override@JsonKey() final  bool isError;
@override final  String? errorMessage;

/// Create a copy of AddSalaryState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddSalaryStateCopyWith<_AddSalaryState> get copyWith => __$AddSalaryStateCopyWithImpl<_AddSalaryState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddSalaryState&&(identical(other.salaryIncome, salaryIncome) || other.salaryIncome == salaryIncome)&&(identical(other.controller, controller) || other.controller == controller)&&(identical(other.date, date) || other.date == date)&&(identical(other.isValid, isValid) || other.isValid == isValid)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.isError, isError) || other.isError == isError)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,salaryIncome,controller,date,isValid,isLoading,isSuccess,isError,errorMessage);

@override
String toString() {
  return 'AddSalaryState(salaryIncome: $salaryIncome, controller: $controller, date: $date, isValid: $isValid, isLoading: $isLoading, isSuccess: $isSuccess, isError: $isError, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$AddSalaryStateCopyWith<$Res> implements $AddSalaryStateCopyWith<$Res> {
  factory _$AddSalaryStateCopyWith(_AddSalaryState value, $Res Function(_AddSalaryState) _then) = __$AddSalaryStateCopyWithImpl;
@override @useResult
$Res call({
 Salary salaryIncome, TextEditingController? controller, DateTime? date, bool isValid, bool isLoading, bool isSuccess, bool isError, String? errorMessage
});




}
/// @nodoc
class __$AddSalaryStateCopyWithImpl<$Res>
    implements _$AddSalaryStateCopyWith<$Res> {
  __$AddSalaryStateCopyWithImpl(this._self, this._then);

  final _AddSalaryState _self;
  final $Res Function(_AddSalaryState) _then;

/// Create a copy of AddSalaryState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? salaryIncome = null,Object? controller = freezed,Object? date = freezed,Object? isValid = null,Object? isLoading = null,Object? isSuccess = null,Object? isError = null,Object? errorMessage = freezed,}) {
  return _then(_AddSalaryState(
salaryIncome: null == salaryIncome ? _self.salaryIncome : salaryIncome // ignore: cast_nullable_to_non_nullable
as Salary,controller: freezed == controller ? _self.controller : controller // ignore: cast_nullable_to_non_nullable
as TextEditingController?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,isValid: null == isValid ? _self.isValid : isValid // ignore: cast_nullable_to_non_nullable
as bool,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
