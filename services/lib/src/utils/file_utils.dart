import 'dart:io';
import 'dart:typed_data';

import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:mime/mime.dart';
import 'package:path_provider/path_provider.dart';

class FileUtils {
  static String? defaultDir;

  static Future<File?> getImageFileFromUrl(String imageUrl) async {
    try {
      return await DefaultCacheManager().getSingleFile(imageUrl);
    } catch (_) {
      return null;
    }
  }

  static Future<Uint8List?> readFile(String filename,
      {bool temporary = false}) async {
    final file = await _getFile(filename, temporary: temporary);
    if (file != null) {
      return await file.readAsBytes();
    }
    return null;
  }

  static Future<File> writeFile(
    String filename,
    Uint8List buffer, {
    bool temporary = false,
    bool override = false,
  }) async {
    final file = await _getFile(filename, temporary: temporary);
    if (file == null) {
      final newFilePat = await _filePath(filename, temporary: temporary);

      return await File(newFilePat).writeAsBytes(buffer);
    } else {
      if (override) {
        return await file.writeAsBytes(buffer);
      } else {
        final oldFileName = filename.split('.').toList();
        var fileExtension = '';
        if (oldFileName.length > 1) {
          fileExtension = '.${oldFileName.removeLast()}';
        }
        final newFileName =
            '${oldFileName.join('.')}_${(DateTime.now().millisecondsSinceEpoch) / 1000}$fileExtension';

        return await writeFile(
          newFileName,
          buffer,
          temporary: temporary,
          override: override,
        );
      }
    }
  }

  static String? getMimeType(File file) {
    return lookupMimeType(file.path);
  }

  static bool isExist(String filePath) {
    return File(filePath).existsSync();
  }

  static bool isFolder(String filePath) {
    return FileSystemEntity.typeSync(filePath) ==
        FileSystemEntityType.directory;
  }

  static Future<bool> deleteFile(String filePath) async {
    try {
      await File(filePath).delete(recursive: true);
      return true;
    } catch (_) {}
    return false;
  }

  static Future<File?> _getFile(String fileName,
      {bool temporary = false}) async {
    final filePath = await _filePath(fileName, temporary: temporary);
    final file = File(filePath);
    return (await file.exists()) ? file : null;
  }

  static Future<String> _filePath(String fileName,
      {bool temporary = false}) async {
    return temporary
        ? "${(await _getTemporaryDirectory())?.path ?? ''}/$fileName}"
        : "${(await _getApplicationDocumentsDirectory())?.path ?? ''}/$fileName";
  }

  static Future<Directory?> _getTemporaryDirectory() async {
    try {
      final directory = await getTemporaryDirectory();
      final tempDirPath =
          "${directory.path}${defaultDir != null ? '/$defaultDir' : ''}";
      final tempDir = Directory(tempDirPath);
      if (!tempDir.existsSync()) {
        return await tempDir.create(recursive: true);
      }
      return tempDir;
    } on MissingPlatformDirectoryException catch (_) {}
    return null;
  }

  static Future<Directory?> _getApplicationDocumentsDirectory() async {
    try {
      final directory = await getApplicationDocumentsDirectory();
      final appDocDirPath =
          "${directory.path}${defaultDir != null ? '/$defaultDir' : ''}";
      final appDocDir = Directory(appDocDirPath);
      if (!appDocDir.existsSync()) {
        return await appDocDir.create(recursive: true);
      }

      return appDocDir;
    } on MissingPlatformDirectoryException catch (_) {}
    return null;
  }
}
