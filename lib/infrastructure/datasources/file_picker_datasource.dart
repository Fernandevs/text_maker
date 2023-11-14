import 'dart:io';
import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:text_maker/domain/datasources/file_chooser_datasource.dart';

class FilePickerDatasource extends FileChooserDatasource {
  @override
  Future<File?> pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      allowMultiple: false,
      type: FileType.custom,
      allowedExtensions: ['txt'],
    );

    if (result == null) return null;

    Uint8List fileBytes = result.files.first.bytes!;
    File file = File('');

    file.writeAsBytesSync(fileBytes);

    return file;
  }
}
