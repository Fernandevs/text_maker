import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:text_maker/infrastructure/datasources/file_saver_datasource.dart';
import 'package:text_maker/infrastructure/repositories/save_file_repository_impl.dart';

part 'save_file_repository_provider.g.dart';

@Riverpod(keepAlive: true)
SaveFileRepositoryImpl saveFileRepository(SaveFileRepositoryRef ref) =>
    SaveFileRepositoryImpl(FileSaverDatasource());
