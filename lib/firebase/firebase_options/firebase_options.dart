import 'dart:io';
import 'package:firebase_core/firebase_core.dart';

class DefaultFirebaseConfig {
  static FirebaseOptions get platformOptions {
    if (Platform.isIOS) {
      //iOS
      return const FirebaseOptions(
          apiKey: 'AIzaSyCn0XiwnlpW4ElaRbnE47KhqaMdSqCb0RE',
          appId: '1:951701004655:ios:4173bbdf24641e07b2889a',
          messagingSenderId: '951701004655',
          projectId: 'cumple-consultas',
          iosBundleId: 'com.cumpleanos.cumpleConsultas'
          );
    } else {
      //android
      return const FirebaseOptions(
          apiKey: 'AIzaSyAxEWUO6-Z-YFnnN3ebHyu-9KvcCbohIo8',
          appId: '1:951701004655:android:0a61d6e792e14d5ab2889a',
          messagingSenderId: '951701004655',
          projectId: 'cumple-consultas',
          );
    }
  }
}
