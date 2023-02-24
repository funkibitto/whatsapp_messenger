import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:whatsapp_messenger/core/error/firebase_error_extention.dart';

part 'firebase_storage_service.g.dart';

@Riverpod(keepAlive: true)
FirebaseStorageService firebaseStorageService(FirebaseStorageServiceRef ref) {
  return FirebaseStorageServiceImpl(
    firebaseStorage: FirebaseStorage.instance,
  );
}

abstract class FirebaseStorageService {
  Future<String> uploadFile({
    required String filePath,
    required File file,
  });

  Future<void> deleteFile({required String filePath});

  Future<void> deleteAllFolderFiles({required String path});
}

class FirebaseStorageServiceImpl implements FirebaseStorageService {
  final FirebaseStorage firebaseStorage;

  FirebaseStorageServiceImpl({required this.firebaseStorage});

  @override
  Future<void> deleteFile({required String filePath}) async {
    return await _tryCatchWrapper(
      () async {
        return await firebaseStorage.ref().child(filePath).delete();
      },
    );
  }

  @override
  Future<void> deleteAllFolderFiles({required String path}) async {
    return await _tryCatchWrapper(
      () async {
        return await firebaseStorage.ref().child(path).listAll().then(
          (result) {
            for (final file in result.items) {
              file.delete();
            }
          },
        );
      },
    );
  }

  @override
  Future<String> uploadFile(
      {required String filePath, required File file}) async {
    return await _tryCatchWrapper(
      () async {
        final uploadTask = firebaseStorage.ref().child(filePath).putFile(file);
        final downloadURL = await (await uploadTask).ref.getDownloadURL();
        return downloadURL;
      },
    );
  }

  Future<T> _tryCatchWrapper<T>(Future<T> Function() body) async {
    try {
      return await body();
    } on Exception catch (e) {
      throw e.firebaseErrorToServerException();
    }
  }
}
