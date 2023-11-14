import 'dart:io';

import 'package:file_saver/file_saver.dart';
import 'package:text_maker/domain/datasources/save_file_datasource.dart';

class FileSaverDatasource extends SaveFileDatasource {
  @override
  Future<String> saveFile({
    required String name,
    File? file,
    String? filePath,
  }) async =>
      await FileSaver.instance.saveFile(
        name: name,
        ext: 'txT',
        file: file,
        mimeType: MimeType.custom,
        customMimeType: 'application/custom-type',
      );

  @override
  Future<String?> saveFileAs({
    required String name,
    File? file,
    String? filePath,
  }) async =>
      await FileSaver.instance.saveAs(
        name: name,
        ext: 'txm',
        file: file,
        mimeType: MimeType.custom,
        customMimeType: 'application/custom-type',
      );
}
