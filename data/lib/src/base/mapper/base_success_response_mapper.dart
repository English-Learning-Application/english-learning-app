import 'package:data/data.dart';
import 'package:services/services.dart';

enum SuccessResponseMapperType {
  dataResponse,
  listResponse,
  paginationResponse,
}

abstract class BaseSuccessResponseMapper<I extends Object, O extends Object> {
  const BaseSuccessResponseMapper();

  factory BaseSuccessResponseMapper.fromType(SuccessResponseMapperType type) {
    return switch (type) {
      SuccessResponseMapperType.dataResponse =>
        DataResponseSuccessMapper<I>() as BaseSuccessResponseMapper<I, O>,
      SuccessResponseMapperType.listResponse =>
        ListResponseSuccessMapper<I>() as BaseSuccessResponseMapper<I, O>,
      SuccessResponseMapperType.paginationResponse =>
        PaginationResponseSuccessMapper<I>() as BaseSuccessResponseMapper<I, O>,
    };
  }

  O? map({
    required dynamic response,
    Decoder<I>? decoder,
  }) {
    try {
      return mapToDataModel(response: response, decoder: decoder);
    } on RemoteException catch (_) {
      rethrow;
    } catch (e) {
      throw RemoteException(
        kind: RemoteExceptionKind.decodeError,
        rootException: e,
      );
    }
  }

  O? mapToDataModel({required dynamic response, Decoder<I>? decoder});
}
