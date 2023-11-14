// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'document_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DocumentModel {
  String get title => throw _privateConstructorUsedError;
  FileSaver get fileSaver => throw _privateConstructorUsedError;
  QuillController get controller => throw _privateConstructorUsedError;
  Future<File?> Function() get openFile => throw _privateConstructorUsedError;
  Future<void> Function({required String title}) get saveFile =>
      throw _privateConstructorUsedError;
  Future<void> Function() get increase => throw _privateConstructorUsedError;
  File? get file => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DocumentModelCopyWith<DocumentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentModelCopyWith<$Res> {
  factory $DocumentModelCopyWith(
          DocumentModel value, $Res Function(DocumentModel) then) =
      _$DocumentModelCopyWithImpl<$Res, DocumentModel>;
  @useResult
  $Res call(
      {String title,
      FileSaver fileSaver,
      QuillController controller,
      Future<File?> Function() openFile,
      Future<void> Function({required String title}) saveFile,
      Future<void> Function() increase,
      File? file});
}

/// @nodoc
class _$DocumentModelCopyWithImpl<$Res, $Val extends DocumentModel>
    implements $DocumentModelCopyWith<$Res> {
  _$DocumentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? fileSaver = null,
    Object? controller = null,
    Object? openFile = null,
    Object? saveFile = null,
    Object? increase = null,
    Object? file = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      fileSaver: null == fileSaver
          ? _value.fileSaver
          : fileSaver // ignore: cast_nullable_to_non_nullable
              as FileSaver,
      controller: null == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as QuillController,
      openFile: null == openFile
          ? _value.openFile
          : openFile // ignore: cast_nullable_to_non_nullable
              as Future<File?> Function(),
      saveFile: null == saveFile
          ? _value.saveFile
          : saveFile // ignore: cast_nullable_to_non_nullable
              as Future<void> Function({required String title}),
      increase: null == increase
          ? _value.increase
          : increase // ignore: cast_nullable_to_non_nullable
              as Future<void> Function(),
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DocumentModelImplCopyWith<$Res>
    implements $DocumentModelCopyWith<$Res> {
  factory _$$DocumentModelImplCopyWith(
          _$DocumentModelImpl value, $Res Function(_$DocumentModelImpl) then) =
      __$$DocumentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      FileSaver fileSaver,
      QuillController controller,
      Future<File?> Function() openFile,
      Future<void> Function({required String title}) saveFile,
      Future<void> Function() increase,
      File? file});
}

/// @nodoc
class __$$DocumentModelImplCopyWithImpl<$Res>
    extends _$DocumentModelCopyWithImpl<$Res, _$DocumentModelImpl>
    implements _$$DocumentModelImplCopyWith<$Res> {
  __$$DocumentModelImplCopyWithImpl(
      _$DocumentModelImpl _value, $Res Function(_$DocumentModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? fileSaver = null,
    Object? controller = null,
    Object? openFile = null,
    Object? saveFile = null,
    Object? increase = null,
    Object? file = freezed,
  }) {
    return _then(_$DocumentModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      fileSaver: null == fileSaver
          ? _value.fileSaver
          : fileSaver // ignore: cast_nullable_to_non_nullable
              as FileSaver,
      controller: null == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as QuillController,
      openFile: null == openFile
          ? _value.openFile
          : openFile // ignore: cast_nullable_to_non_nullable
              as Future<File?> Function(),
      saveFile: null == saveFile
          ? _value.saveFile
          : saveFile // ignore: cast_nullable_to_non_nullable
              as Future<void> Function({required String title}),
      increase: null == increase
          ? _value.increase
          : increase // ignore: cast_nullable_to_non_nullable
              as Future<void> Function(),
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$DocumentModelImpl implements _DocumentModel {
  const _$DocumentModelImpl(
      {this.title = '',
      required this.fileSaver,
      required this.controller,
      required this.openFile,
      required this.saveFile,
      required this.increase,
      this.file});

  @override
  @JsonKey()
  final String title;
  @override
  final FileSaver fileSaver;
  @override
  final QuillController controller;
  @override
  final Future<File?> Function() openFile;
  @override
  final Future<void> Function({required String title}) saveFile;
  @override
  final Future<void> Function() increase;
  @override
  final File? file;

  @override
  String toString() {
    return 'DocumentModel(title: $title, fileSaver: $fileSaver, controller: $controller, openFile: $openFile, saveFile: $saveFile, increase: $increase, file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DocumentModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.fileSaver, fileSaver) ||
                other.fileSaver == fileSaver) &&
            (identical(other.controller, controller) ||
                other.controller == controller) &&
            (identical(other.openFile, openFile) ||
                other.openFile == openFile) &&
            (identical(other.saveFile, saveFile) ||
                other.saveFile == saveFile) &&
            (identical(other.increase, increase) ||
                other.increase == increase) &&
            (identical(other.file, file) || other.file == file));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, fileSaver, controller,
      openFile, saveFile, increase, file);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DocumentModelImplCopyWith<_$DocumentModelImpl> get copyWith =>
      __$$DocumentModelImplCopyWithImpl<_$DocumentModelImpl>(this, _$identity);
}

abstract class _DocumentModel implements DocumentModel {
  const factory _DocumentModel(
      {final String title,
      required final FileSaver fileSaver,
      required final QuillController controller,
      required final Future<File?> Function() openFile,
      required final Future<void> Function({required String title}) saveFile,
      required final Future<void> Function() increase,
      final File? file}) = _$DocumentModelImpl;

  @override
  String get title;
  @override
  FileSaver get fileSaver;
  @override
  QuillController get controller;
  @override
  Future<File?> Function() get openFile;
  @override
  Future<void> Function({required String title}) get saveFile;
  @override
  Future<void> Function() get increase;
  @override
  File? get file;
  @override
  @JsonKey(ignore: true)
  _$$DocumentModelImplCopyWith<_$DocumentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
