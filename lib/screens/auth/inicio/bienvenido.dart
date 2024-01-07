import 'package:cumple_consultas/constants/assets_images.dart';
import 'package:cumple_consultas/constants/routes.dart';
import 'package:cumple_consultas/screens/auth/login/login.dart';
import 'package:cumple_consultas/screens/auth/registro/registro.dart';
import 'package:cumple_consultas/widgets/boton_primario/boton_primario.dart';
import 'package:cumple_consultas/widgets/titulos_mejores/top_titulos.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bienvenido extends StatelessWidget {
  const Bienvenido({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TopTitulos(
                  subtitulo: "Consulta nuestros productos con nuestra App",
                  titulo: "Bienvenido"),
              Center(
                  child: Image.asset(
                AssetsImages.instance.bienvenido,
              )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CupertinoButton(
                    onPressed: () {},
                    child: const Icon(
                      Icons.facebook,
                      size: 35,
                      color: Colors.blue,
                    ),
                  ),
                  const SizedBox(
                    width: 12.0,
                  ),
                  CupertinoButton(
                    onPressed: () {},
                    child: Image.asset(
                      AssetsImages.instance.googleLogo,
                      scale: 30.0,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30.0,
              ),
              BotonPrimario(
                titulo: "Iniciar Sesión",
                onPressed: () {
                  Routes.instance.push(widget: const Login(), context: context);
                },
              ),
              const SizedBox(
                height: 18.0,
              ),
              BotonPrimario(
                titulo: "Registrarse",
                onPressed: () {
                  Routes.instance
                      .push(widget: const Registro(), context: context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}