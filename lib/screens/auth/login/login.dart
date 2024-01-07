import 'package:cumple_consultas/widgets/boton_primario/boton_primario.dart';
import 'package:cumple_consultas/widgets/titulos_mejores/top_titulos.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController correo = TextEditingController();
  TextEditingController password = TextEditingController();
  bool mostrarPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TopTitulos(
                subtitulo: "Bienvenido que gusto tenerte aqui  ",
                titulo: "Iniciar Sesión"),
            const SizedBox(
              height: 12.0,
            ),
            TextFormField(
              controller: correo,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                  hintText: "Correo Electronico",
                  prefixIcon: Icon(
                    Icons.email_outlined,
                  )),
            ),
            TextFormField(
              controller: password,
              obscureText: mostrarPassword,
              decoration: InputDecoration(
                hintText: "Contraseña",
                prefixIcon: const Icon(
                  Icons.password_sharp,
                ),
                suffixIcon: CupertinoButton(
                    onPressed: () {
                      setState(() {
                        mostrarPassword = !mostrarPassword;
                      });
                    },
                    padding: EdgeInsets.zero,
                    child: const Icon(
                      Icons.visibility,
                      color: Colors.grey,
                    )),
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            BotonPrimario(
              titulo: "Iniciar Sesión",
              onPressed: () async {
                
              },
            ),
            const SizedBox(
              height: 12.0,
            ),
            const Center(child: Text("No tienes cuenta")),
            const SizedBox(
              height: 12.0,
            ),
            Center(
                child: CupertinoButton(
                    child: Text(
                      "Crear una Cuenta",
                      style: TextStyle(color: Theme.of(context).primaryColor),
                    ),
                    onPressed: () {}))
          ],
        ),
      ),
    );
  }
}