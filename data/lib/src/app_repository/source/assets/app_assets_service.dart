import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:photo_manager/photo_manager.dart';

@lazySingleton
class AppAssetsService {
  const AppAssetsService();

  Future<List<File>> getImagesPaged(
    int page,
  ) async {
    final PermissionState ps = await PhotoManager.requestPermissionExtend();

    if (ps.isAuth || ps.hasAccess) {
      await PhotoManager.getAssetCount();
      final assets = await PhotoManager.getAssetListPaged(
        page: page,
        pageCount: 50,
        type: RequestType.image,
      );

      final List<File> files = [];
      await Future.forEach(
        assets,
        (AssetEntity asset) async {
          final file = await asset.file;
          files.add(file!);
        },
      );

      return files;
    } else {
      PhotoManager.openSetting();
      return [];
    }
  }
}
