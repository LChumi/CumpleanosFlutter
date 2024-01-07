import 'package:flutter/material.dart';

class TopTitulos extends StatelessWidget {
  final String titulo,subtitulo;
  const TopTitulos({super.key, required this.subtitulo, required this.titulo});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: kToolbarHeight + 2,
        ),
        if(titulo =="Iniciar Sesión" || titulo =="Crear una cuenta")
        GestureDetector(
          onTap: (){
            Navigator.of(context).pop();
          },
          child: const Icon(Icons.arrow_back_ios_new),
        ),
        const SizedBox(
          height: 12.0,
        ),
        Text(
          titulo,
          style: const TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          subtitulo,
          style: const TextStyle(
            fontSize: 18.0,
          ),
        ),
      ],
    );
  }
}