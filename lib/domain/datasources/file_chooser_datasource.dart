import 'dart:io';

abstract class FileChooserDatasource {
  Future<File?> pickFile();
}
