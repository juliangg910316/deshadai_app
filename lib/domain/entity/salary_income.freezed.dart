// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'salary_income.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SalaryIncome {

 int get id; double get salaryIncome; String? get comment; DateTime get date;
/// Create a copy of SalaryIncome
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SalaryIncomeCopyWith<SalaryIncome> get copyWith => _$SalaryIncomeCopyWithImpl<SalaryIncome>(this as SalaryIncome, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SalaryIncome&&(identical(other.id, id) || other.id == id)&&(identical(other.salaryIncome, salaryIncome) || other.salaryIncome == salaryIncome)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.date, date) || other.date == date));
}


@override
int get hashCode => Object.hash(runtimeType,id,salaryIncome,comment,date);

@override
String toString() {
  return 'SalaryIncome(id: $id, salaryIncome: $salaryIncome, comment: $comment, date: $date)';
}


}

/// @nodoc
abstract mixin class $SalaryIncomeCopyWith<$Res>  {
  factory $SalaryIncomeCopyWith(SalaryIncome value, $Res Function(SalaryIncome) _then) = _$SalaryIncomeCopyWithImpl;
@useResult
$Res call({
 int id, double salaryIncome, String? comment, DateTime date
});




}
/// @nodoc
class _$SalaryIncomeCopyWithImpl<$Res>
    implements $SalaryIncomeCopyWith<$Res> {
  _$SalaryIncomeCopyWithImpl(this._self, this._then);

  final SalaryIncome _self;
  final $Res Function(SalaryIncome) _then;

/// Create a copy of SalaryIncome
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? salaryIncome = null,Object? comment = freezed,Object? date = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,salaryIncome: null == salaryIncome ? _self.salaryIncome : salaryIncome // ignore: cast_nullable_to_non_nullable
as double,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [SalaryIncome].
extension SalaryIncomePatterns on SalaryIncome {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SalaryIncome value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SalaryIncome() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SalaryIncome value)  $default,){
final _that = this;
switch (_that) {
case _SalaryIncome():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SalaryIncome value)?  $default,){
final _that = this;
switch (_that) {
case _SalaryIncome() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  double salaryIncome,  String? comment,  DateTime date)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SalaryIncome() when $default != null:
return $default(_that.id,_that.salaryIncome,_that.comment,_that.date);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  double salaryIncome,  String? comment,  DateTime date)  $default,) {final _that = this;
switch (_that) {
case _SalaryIncome():
return $default(_that.id,_that.salaryIncome,_that.comment,_that.date);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  double salaryIncome,  String? comment,  DateTime date)?  $default,) {final _that = this;
switch (_that) {
case _SalaryIncome() when $default != null:
return $default(_that.id,_that.salaryIncome,_that.comment,_that.date);case _:
  return null;

}
}

}

/// @nodoc


class _SalaryIncome implements SalaryIncome {
   _SalaryIncome({required this.id, required this.salaryIncome, this.comment, required this.date});
  

@override final  int id;
@override final  double salaryIncome;
@override final  String? comment;
@override final  DateTime date;

/// Create a copy of SalaryIncome
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SalaryIncomeCopyWith<_SalaryIncome> get copyWith => __$SalaryIncomeCopyWithImpl<_SalaryIncome>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SalaryIncome&&(identical(other.id, id) || other.id == id)&&(identical(other.salaryIncome, salaryIncome) || other.salaryIncome == salaryIncome)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.date, date) || other.date == date));
}


@override
int get hashCode => Object.hash(runtimeType,id,salaryIncome,comment,date);

@override
String toString() {
  return 'SalaryIncome(id: $id, salaryIncome: $salaryIncome, comment: $comment, date: $date)';
}


}

/// @nodoc
abstract mixin class _$SalaryIncomeCopyWith<$Res> implements $SalaryIncomeCopyWith<$Res> {
  factory _$SalaryIncomeCopyWith(_SalaryIncome value, $Res Function(_SalaryIncome) _then) = __$SalaryIncomeCopyWithImpl;
@override @useResult
$Res call({
 int id, double salaryIncome, String? comment, DateTime date
});




}
/// @nodoc
class __$SalaryIncomeCopyWithImpl<$Res>
    implements _$SalaryIncomeCopyWith<$Res> {
  __$SalaryIncomeCopyWithImpl(this._self, this._then);

  final _SalaryIncome _self;
  final $Res Function(_SalaryIncome) _then;

/// Create a copy of SalaryIncome
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? salaryIncome = null,Object? comment = freezed,Object? date = null,}) {
  return _then(_SalaryIncome(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,salaryIncome: null == salaryIncome ? _self.salaryIncome : salaryIncome // ignore: cast_nullable_to_non_nullable
as double,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
