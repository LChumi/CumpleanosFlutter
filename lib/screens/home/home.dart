import 'package:cumple_consultas/widgets/titulos_mejores/top_titulos.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                const TopTitulos(subtitulo: "", titulo: "Consultas"),
                TextFormField(
                  decoration: const InputDecoration(hintText: "Buscar...."),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                const SizedBox(
                  height: 24.0,
                ),
                const Text(
                  "Categorias",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: listaCategorias
              .map(
                (e) => Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Card(
                    color: Colors.white,
                    elevation: 3.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)
                    ),
                    child: SizedBox(
                      height: 100,
                      width: 100,
                      child: Image.network(e),
                    ),
                  ),
                  ),
              )
              .toList(),
            ),
          ),
          const Padding(padding: EdgeInsets.all(12.0),
          child: Text(
            "Nuestros Mejores Productos",
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold
            ),
          ),
          ),
        ],
      ),
    );
  }
}

List<String> listaCategorias = [
  "http://xn--cumpleaos-r6a.store/wp-content/uploads/2023/09/accesoriosMas.png",
  "http://xn--cumpleaos-r6a.store/wp-content/uploads/2023/12/carnaval.png",
  "http://xn--cumpleaos-r6a.store/wp-content/uploads/2023/09/grado.png",
  "http://xn--cumpleaos-r6a.store/wp-content/uploads/2023/01/fiesta.jpeg",
  "http://xn--cumpleaos-r6a.store/wp-content/uploads/2023/09/jugueteria.jpeg"
];
