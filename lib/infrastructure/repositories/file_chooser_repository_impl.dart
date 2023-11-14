import 'dart:io';

import 'package:text_maker/domain/datasources/file_chooser_datasource.dart';
import 'package:text_maker/domain/repositories/file_chooser_repository.dart';

class FileChooserRepositoryImpl extends FileChooserRepository {
  final FileChooserDatasource _datasource;

  FileChooserRepositoryImpl(this._datasource);

  @override
  Future<File?> pickFile() async => await _datasource.pickFile();
}
