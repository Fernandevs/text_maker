import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'document_number_provider.g.dart';

@Riverpod(keepAlive: true)
class DocumentNumber extends _$DocumentNumber {
  @override
  int build() => 0;

  void increase() => state = ++state;
}
