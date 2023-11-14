import 'dart:io';

abstract class FileChooserRepository {
  Future<File?> pickFile();
}
