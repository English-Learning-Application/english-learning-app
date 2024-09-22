import 'package:freezed_annotation/freezed_annotation.dart';

part 'server_error_detail.freezed.dart';

@freezed
class ServerErrorDetail with _$ServerErrorDetail {
  const factory ServerErrorDetail({
    String? detail,
    String? path,
    String? serverErrorId,
    int? serverStatusCode,
    String? message,
    String? field,
  }) = _ServerErrorDetail;
}
