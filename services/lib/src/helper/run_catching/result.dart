import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../services.dart';

part 'result.freezed.dart';

@freezed
class Result<T> with _$Result<T> {
  const factory Result.success(T value) = _Success;
  const factory Result.failure(AppException exception) = _Failure;
}
