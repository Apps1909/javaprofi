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
    apiKey: 'AIzaSyC6h6By-EqHI0k5pNOscfPEd-zT9EPOjQU',
    appId: '1:821297909674:web:ba8445eadbfb4c730b65d3',
    messagingSenderId: '821297909674',
    projectId: 'java-profi',
    authDomain: 'java-profi.firebaseapp.com',
    storageBucket: 'java-profi.appspot.com',
    measurementId: 'G-6E3K1SXKN3',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDMKG1ygAZ3IFhBCBP578bZYbwMHllo9LI',
    appId: '1:821297909674:android:a5fdfa908bee5df00b65d3',
    messagingSenderId: '821297909674',
    projectId: 'java-profi',
    storageBucket: 'java-profi.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCMsvVX5dt61YWFJ6345DDe6I3xNmE_3_Y',
    appId: '1:821297909674:ios:711881ee9b84fd8b0b65d3',
    messagingSenderId: '821297909674',
    projectId: 'java-profi',
    storageBucket: 'java-profi.appspot.com',
    iosBundleId: 'com.msdtech.javaprofi',
  );
}