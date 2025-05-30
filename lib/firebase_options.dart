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
    apiKey: 'AIzaSyCq06T7JB4iB5L_htq-xFJvL2Tu7daeASw',
    appId: '1:31021639770:web:1425baf5d73bb461b7d063',
    messagingSenderId: '31021639770',
    projectId: 'campusonline-90417',
    authDomain: 'campusonline-90417.firebaseapp.com',
    storageBucket: 'campusonline-90417.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD25Aub-DIv6qwTmLRDmcTyxjqyagYt3Eg',
    appId: '1:31021639770:android:479ba5dcbc945c2db7d063',
    messagingSenderId: '31021639770',
    projectId: 'campusonline-90417',
    storageBucket: 'campusonline-90417.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAuAbjlHFwRSUUvUMKKZZws2dj6qWzAQbI',
    appId: '1:31021639770:ios:808ce184f7f5aa20b7d063',
    messagingSenderId: '31021639770',
    projectId: 'campusonline-90417',
    storageBucket: 'campusonline-90417.firebasestorage.app',
    iosBundleId: 'com.example.campusOnline',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAuAbjlHFwRSUUvUMKKZZws2dj6qWzAQbI',
    appId: '1:31021639770:ios:808ce184f7f5aa20b7d063',
    messagingSenderId: '31021639770',
    projectId: 'campusonline-90417',
    storageBucket: 'campusonline-90417.firebasestorage.app',
    iosBundleId: 'com.example.campusOnline',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCq06T7JB4iB5L_htq-xFJvL2Tu7daeASw',
    appId: '1:31021639770:web:e20e65e3872b1b4bb7d063',
    messagingSenderId: '31021639770',
    projectId: 'campusonline-90417',
    authDomain: 'campusonline-90417.firebaseapp.com',
    storageBucket: 'campusonline-90417.firebasestorage.app',
  );
}
