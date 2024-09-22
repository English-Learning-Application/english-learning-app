import '../../../services.dart';

Result<Obj> runCatching<Obj>({
  required Obj Function() action,
}) {
  try {
    return Result.success(action.call());
  } on AppException catch (e) {
    return Result.failure(e);
  }
}

Future<Result<Obj>> runCatchingAsync<Obj>({
  required Future<Obj> Function() action,
}) async {
  try {
    return Result.success(await action.call());
  } on AppException catch (e) {
    return Result.failure(e);
  }
}
