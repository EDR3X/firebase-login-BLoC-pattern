import 'package:fireauth/const/fire_api_keys.dart';
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: FireKeys.android,
    appId: '1:656317995107:android:115e4ec90d8375a819c056',
    messagingSenderId: '656317995107',
    projectId: 'firebase-auth-second-bloc',
    storageBucket: 'firebase-auth-second-bloc.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: FireKeys.apple,
    appId: '1:656317995107:ios:f3e63956dea7b16219c056',
    messagingSenderId: '656317995107',
    projectId: 'firebase-auth-second-bloc',
    storageBucket: 'firebase-auth-second-bloc.appspot.com',
    iosClientId:
        '656317995107-utvt5fj6l7ui7pfqkq58pgvmog3d2jfa.apps.googleusercontent.com',
    iosBundleId: 'com.example.fireauth',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: FireKeys.apple,
    appId: '1:656317995107:ios:f3e63956dea7b16219c056',
    messagingSenderId: '656317995107',
    projectId: 'firebase-auth-second-bloc',
    storageBucket: 'firebase-auth-second-bloc.appspot.com',
    iosClientId:
        '656317995107-utvt5fj6l7ui7pfqkq58pgvmog3d2jfa.apps.googleusercontent.com',
    iosBundleId: 'com.example.fireauth',
  );
}
