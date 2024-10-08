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
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyCxSDMF1MThxug3bkwzr0UNyPEMjfLJ5Lw',
    appId: '1:881049493033:web:2dfe2948275732d8a20638',
    messagingSenderId: '881049493033',
    projectId: 'elegancehub-14da6',
    authDomain: 'elegancehub-14da6.firebaseapp.com',
    storageBucket: 'elegancehub-14da6.appspot.com',
    measurementId: 'G-5R3D5Y85B9',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCs2IVvwN2IWIBTRU5-WO00Y-7btUjb1Tc',
    appId: '1:881049493033:android:3a5cfaafe5c71124a20638',
    messagingSenderId: '881049493033',
    projectId: 'elegancehub-14da6',
    storageBucket: 'elegancehub-14da6.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC-6FvZwb0ADk3f-EXxMimrZZ0AngDsU1E',
    appId: '1:881049493033:ios:260704a13e846b78a20638',
    messagingSenderId: '881049493033',
    projectId: 'elegancehub-14da6',
    storageBucket: 'elegancehub-14da6.appspot.com',
    iosBundleId: 'com.example.flutterShopApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC-6FvZwb0ADk3f-EXxMimrZZ0AngDsU1E',
    appId: '1:881049493033:ios:260704a13e846b78a20638',
    messagingSenderId: '881049493033',
    projectId: 'elegancehub-14da6',
    storageBucket: 'elegancehub-14da6.appspot.com',
    iosBundleId: 'com.example.flutterShopApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCxSDMF1MThxug3bkwzr0UNyPEMjfLJ5Lw',
    appId: '1:881049493033:web:9741e001fd14be0ea20638',
    messagingSenderId: '881049493033',
    projectId: 'elegancehub-14da6',
    authDomain: 'elegancehub-14da6.firebaseapp.com',
    storageBucket: 'elegancehub-14da6.appspot.com',
    measurementId: 'G-4113TDLFB9',
  );
}
