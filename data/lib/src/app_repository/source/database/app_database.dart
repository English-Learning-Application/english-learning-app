import 'package:injectable/injectable.dart';
import 'package:objectbox/objectbox.dart';

import '../../../../data.dart';

@LazySingleton()
class AppDatabase {
  final Store store;

  AppDatabase(this.store);

  int putUser(LocalUserData user) => store.box<LocalUserData>().put(user);

  Stream<List<LocalUserData>> getUsersStream() =>
      store.box<LocalUserData>().query().watch(triggerImmediately: true).map(
            (query) => query.find(),
          );

  List<LocalUserData> getUsers() => store.box<LocalUserData>().getAll();

  LocalUserData? getUser(int id) => store.box<LocalUserData>().get(id);

  int deleteAllUsers() => store.box<LocalUserData>().removeAll();
}
