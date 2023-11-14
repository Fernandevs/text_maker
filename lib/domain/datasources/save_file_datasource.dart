import 'dart:io';

abstract class SaveFileDatasource {
  Future<String> saveFile({
    required String name,
    File? file,
    String? filePath,
  });

  Future<String?> saveFileAs({
    required String name,
    File? file,
    String? filePath,
  });
}
