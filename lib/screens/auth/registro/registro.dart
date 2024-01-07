// ignore_for_file: use_build_context_synchronously

import 'package:cumple_consultas/constants/routes.dart';
import 'package:cumple_consultas/screens/auth/login/login.dart';
import 'package:cumple_consultas/widgets/boton_primario/boton_primario.dart';
import 'package:cumple_consultas/widgets/titulos_mejores/top_titulos.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Registro extends StatefulWidget {
  const Registro({super.key});

  @override
  State<Registro> createState() => _RegistroState();
}

class _RegistroState extends State<Registro> {
  TextEditingController correo = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController nombre = TextEditingController();
  TextEditingController telefono = TextEditingController();
  bool isShowPassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TopTitulos(
                  subtitulo: "Bienvenido que gusto tenerte aqui  ",
                  titulo: "Crear una cuenta"),
              const SizedBox(
                height: 12.0,
              ),
              TextFormField(
                controller: nombre,
                decoration: const InputDecoration(
                    hintText: "Nombre",
                    prefixIcon: Icon(
                      Icons.person_outlined,
                    )),
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
                controller: telefono,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                    hintText: "Numero de telefono",
                    prefixIcon: Icon(
                      Icons.phone_outlined,
                    )),
              ),
              TextFormField(
                controller: password,
                obscureText: isShowPassword,
                decoration: InputDecoration(
                  hintText: "Contraseña",
                  prefixIcon: const Icon(
                    Icons.password_sharp,
                  ),
                  suffixIcon: CupertinoButton(
                      onPressed: () {
                        setState(() {
                          isShowPassword = !isShowPassword;
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
                titulo: "Registrarse",
                onPressed: () async {
                },
              ),
              const SizedBox(
                height: 12.0,
              ),
              const Center(child: Text("¿Tienes una cuenta?")),
              const SizedBox(
                height: 12.0,
              ),
              Center(
                  child: CupertinoButton(
                      child: Text(
                        "Inicia sesión",
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      ),
                      onPressed: () {
                        Routes.instance.push(widget: const Login(), context: context);
                      }))
            ],
          ),
        ),
      ),
    );
  }
}