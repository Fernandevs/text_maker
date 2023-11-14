import 'dart:io';

import 'package:file_saver/file_saver.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'document_model.freezed.dart';

@freezed
class DocumentModel with _$DocumentModel {
  const factory DocumentModel({
    @Default('') String title,
    required FileSaver fileSaver,
    required QuillController controller,
    required Future<File?> Function() openFile,
    required Future<void> Function({required String title}) saveFile,
    required Future<void> Function() increase,
    File? file,
  }) = _DocumentModel;
}
