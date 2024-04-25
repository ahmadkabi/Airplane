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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD-z13gyFLIbesZ_noL_KwY-9cysk4Wf90',
    appId: '1:276481318857:android:d9c67fab81b7585084d218',
    messagingSenderId: '276481318857',
    projectId: 'antam-today',
    databaseURL: 'https://antam-today.firebaseio.com',
    storageBucket: 'antam-today.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDc0EgZoy5LRIB2r1ucpiPs_muNX-2qpXY',
    appId: '1:276481318857:ios:d5400a860ac01bc384d218',
    messagingSenderId: '276481318857',
    projectId: 'antam-today',
    databaseURL: 'https://antam-today.firebaseio.com',
    storageBucket: 'antam-today.appspot.com',
    androidClientId: '276481318857-bh7ots3pf9gotogn2dnr19d1dhh3bdn9.apps.googleusercontent.com',
    iosBundleId: 'com.softcomfy.airplane',
  );

}