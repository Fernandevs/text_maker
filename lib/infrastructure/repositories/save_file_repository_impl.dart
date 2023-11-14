import 'dart:io';

import 'package:text_maker/domain/datasources/save_file_datasource.dart';
import 'package:text_maker/domain/repositories/save_file_repository.dart';

class SaveFileRepositoryImpl extends SaveFileRepository {
  final SaveFileDatasource _datasource;

  SaveFileRepositoryImpl(this._datasource);

  @override
  Future<String> saveFile({
    required String name,
    File? file,
    String? filePath,
  }) async =>
      _datasource.saveFile(
        name: name,
        file: file,
        filePath: filePath,
      );

  @override
  Future<String?> saveFileAs({
    required String name,
    File? file,
    String? filePath,
  }) async =>
      _datasource.saveFileAs(
        name: name,
        file: file,
        filePath: filePath,
      );
}
