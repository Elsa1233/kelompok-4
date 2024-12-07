// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDCJVwE3HaGK_KfTKcgk8lNCe7Ed2qIgSM',
    appId: '1:610932888523:web:776197af0f04dd3752dc4e',
    messagingSenderId: '610932888523',
    projectId: 'lembah-hijau',
    authDomain: 'lembah-hijau.firebaseapp.com',
    storageBucket: 'lembah-hijau.firebasestorage.app',
    measurementId: 'G-WC85LFZ3F3',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD6Kv-WtzwdE83UUPct2J7ilvpAE4sAk-o',
    appId: '1:610932888523:android:2519be14aa198c1a52dc4e',
    messagingSenderId: '610932888523',
    projectId: 'lembah-hijau',
    storageBucket: 'lembah-hijau.firebasestorage.app',
  );
}