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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for android - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyA0MoXM8bcga43O6lOxXTN1GmriTJDuahU',
    appId: '1:899930936995:web:cdde6c22bd79e89974d116',
    messagingSenderId: '899930936995',
    projectId: 'e-com-app-5d2db',
    authDomain: 'e-com-app-5d2db.firebaseapp.com',
    storageBucket: 'e-com-app-5d2db.appspot.com',
    measurementId: 'G-6LHXNJLG50',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB6uvNgyfXGVztwcx8dL7WgTnLJ0TWbVz8',
    appId: '1:899930936995:ios:7666dce8832f5ab574d116',
    messagingSenderId: '899930936995',
    projectId: 'e-com-app-5d2db',
    storageBucket: 'e-com-app-5d2db.appspot.com',
    iosBundleId: 'com.example.eCommercial',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB6uvNgyfXGVztwcx8dL7WgTnLJ0TWbVz8',
    appId: '1:899930936995:ios:7666dce8832f5ab574d116',
    messagingSenderId: '899930936995',
    projectId: 'e-com-app-5d2db',
    storageBucket: 'e-com-app-5d2db.appspot.com',
    iosBundleId: 'com.example.eCommercial',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyA0MoXM8bcga43O6lOxXTN1GmriTJDuahU',
    appId: '1:899930936995:web:8b545013c216b3a274d116',
    messagingSenderId: '899930936995',
    projectId: 'e-com-app-5d2db',
    authDomain: 'e-com-app-5d2db.firebaseapp.com',
    storageBucket: 'e-com-app-5d2db.appspot.com',
    measurementId: 'G-1TG8HKZCVP',
  );
}
