import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:text_maker/domain/repositories/file_chooser_repository.dart';
import 'package:text_maker/infrastructure/datasources/file_picker_datasource.dart';
import 'package:text_maker/infrastructure/repositories/file_chooser_repository_impl.dart';

part 'file_chooser_provider.g.dart';

@Riverpod(keepAlive: true)
FileChooserRepository fileChooserRepository(FileChooserRepositoryRef ref) =>
    FileChooserRepositoryImpl(FilePickerDatasource());
