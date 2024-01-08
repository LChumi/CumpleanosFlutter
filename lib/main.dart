import 'package:cumple_consultas/constants/theme.dart';
import 'package:cumple_consultas/firebase/firebase_auth_helper/firebase_auth_helpe.dart';
import 'package:cumple_consultas/firebase/firebase_options/firebase_options.dart';
import 'package:cumple_consultas/screens/auth/inicio/bienvenido.dart';
import 'package:cumple_consultas/screens/home/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseConfig.platformOptions,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Importadora Cumpleaños',
      theme: themeData,
      home: StreamBuilder(
        stream: FirebaseAuthHelper.instance.getAuthChange,
        builder: ((context, snapshot) {
          if (snapshot.hasData) {
            return const Home();
          }
          return const Bienvenido();
        }),
      ),
    );
  }
}

