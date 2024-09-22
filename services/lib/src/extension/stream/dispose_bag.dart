import 'dart:async';

import 'package:flutter/material.dart';

import '../../../services.dart';

class DisposeBag with LogMixin {
  final List<Object> _disposables = [];

  void addDisposable(Object disposable) {
    _disposables.add(disposable);
  }

  void dispose() {
    for (var disposable in _disposables) {
      if (disposable is StreamSubscription) {
        disposable.cancel();
        logD("Canceled $disposable");
      } else if (disposable is StreamController) {
        disposable.close();
        logD("Closed $disposable");
      } else if (disposable is ChangeNotifier) {
        disposable.dispose();
        logD("Disposed $disposable");
      } else if (disposable is Disposable) {
        disposable.dispose();
        logD("Disposed $disposable");
      }
    }

    _disposables.clear();
  }
}

extension StreamSubscriptionExtensions<T> on StreamSubscription<T> {
  void disposeBy(DisposeBag disposeBag) => disposeBag.addDisposable(this);
}

extension StreamControllerExtensions<T> on StreamController<T> {
  void disposeBy(DisposeBag disposeBag) => disposeBag.addDisposable(this);
}

extension ChangeNotifierExtensions on ChangeNotifier {
  void disposeBy(DisposeBag disposeBag) => disposeBag.addDisposable(this);
}

extension DisposableExtensions on Disposable {
  void disposeBy(DisposeBag disposeBag) => disposeBag.addDisposable(this);
}
