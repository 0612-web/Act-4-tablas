import 'package:flutter/material.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = ["Caballeros", "Damas", "Deportes", "Accesorios"];
    final images = [
      "https://raw.githubusercontent.com/0612-web/imagenes-github/refs/heads/main/caballeros.jfif",
      "https://raw.githubusercontent.com/0612-web/imagenes-github/refs/heads/main/damaszara.jfif",
      "https://raw.githubusercontent.com/0612-web/imagenes-github/refs/heads/main/deportesZARA.jfif",
      "https://raw.githubusercontent.com/0612-web/imagenes-github/refs/heads/main/accesoriosZARA.jfif"
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("CATEGORÍAS"), elevation: 0),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: categories.length,
        separatorBuilder: (_, __) => const SizedBox(height: 12),
        itemBuilder: (context, index) => AspectRatio(
          aspectRatio: 16 / 9,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(image: NetworkImage(images[index]), fit: BoxFit.cover, colorFilter: ColorFilter.mode(Colors.black38, BlendMode.darken)),
            ),
            child: Center(child: Text(categories[index], style: const TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.w300))),
          ),
        ),
      ),
    );
  }
}