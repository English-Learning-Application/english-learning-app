import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';
import 'package:services/services.dart';

part 'get_phone_images_use_case.freezed.dart';

@Injectable()
class GetPhoneImagesUseCase
    extends BaseLoadMoreUseCase<GetPhoneImagesInput, File> {
  final AppRepository _appRepository;

  GetPhoneImagesUseCase(this._appRepository)
      : super(initPage: PagingConstants.initialPage);

  @override
  Future<PagedList<File>> buildUseCase(GetPhoneImagesInput input) async {
    final resp = await _appRepository.getImagesPaged(page);
    return resp;
  }
}

@freezed
class GetPhoneImagesInput extends BaseInput with _$GetPhoneImagesInput {
  const factory GetPhoneImagesInput() = _GetPhoneImagesInput;
}
