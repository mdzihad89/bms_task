// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDy-UxcAnMw2J12Iu3ufiUPFGCZIjFqoJQ',
    appId: '1:437684024167:web:639c80716132e35d34f5c2',
    messagingSenderId: '437684024167',
    projectId: 'bms-task-8df15',
    authDomain: 'bms-task-8df15.firebaseapp.com',
    storageBucket: 'bms-task-8df15.appspot.com',
    measurementId: 'G-5JQP2HSFEH',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCpoxicrQ2aE8K954bgNJ_c2cvY1VkgzvQ',
    appId: '1:437684024167:android:e4d79d6711f86ff134f5c2',
    messagingSenderId: '437684024167',
    projectId: 'bms-task-8df15',
    storageBucket: 'bms-task-8df15.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAem4G-xDUH4F0hLNlkqTrAcbCF5Z61YRA',
    appId: '1:437684024167:ios:9c05e192321afec534f5c2',
    messagingSenderId: '437684024167',
    projectId: 'bms-task-8df15',
    storageBucket: 'bms-task-8df15.appspot.com',
    iosClientId: '437684024167-vb5nkt1pukhgg34ap1d5cbjgcf3s5c8u.apps.googleusercontent.com',
    iosBundleId: 'com.example.bmsTask',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAem4G-xDUH4F0hLNlkqTrAcbCF5Z61YRA',
    appId: '1:437684024167:ios:e6d465c4714f887334f5c2',
    messagingSenderId: '437684024167',
    projectId: 'bms-task-8df15',
    storageBucket: 'bms-task-8df15.appspot.com',
    iosClientId: '437684024167-6vjl061tnpa2uavg1ffr7jkedh78891o.apps.googleusercontent.com',
    iosBundleId: 'com.example.bmsTask.RunnerTests',
  );
}
