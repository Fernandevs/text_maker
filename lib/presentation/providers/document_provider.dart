import 'package:flutter_quill/flutter_quill.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'document_provider.g.dart';

@Riverpod(keepAlive: true)
class Doc extends _$Doc {
  @override
  Document build() => Document();
}
