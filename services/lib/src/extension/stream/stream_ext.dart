import 'package:rxdart/rxdart.dart';

import '../../../services.dart';

extension StreamExtension<T> on Stream<T> {
  Stream<T> log(String name) {
    return doOnListen(() {
      LogUtils.d('▶️ onSubscribed', dateTime: DateTime.now(), name: name);
    }).doOnData((event) {
      LogUtils.d('🟢 onEvent: $event', dateTime: DateTime.now(), name: name);
    }).doOnError((e, _) {
      LogUtils.d('🔴 onError: $e', dateTime: DateTime.now(), name: name);
    }).doOnCancel(() {
      LogUtils.d('🟡 onCanceled', dateTime: DateTime.now(), name: name);
    }).doOnDone(() {
      LogUtils.d('☑️️ onCompleted', dateTime: DateTime.now(), name: name);
    });
  }
}
