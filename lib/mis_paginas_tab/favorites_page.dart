import 'package:flutter/material.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("MIS FAVORITOS")),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, crossAxisSpacing: 16, mainAxisSpacing: 16, childAspectRatio: 0.65,
        ),
        itemCount: 4,
        itemBuilder: (context, index) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network("https://raw.githubusercontent.com/0612-web/imagenes-github/refs/heads/main/favoritosZARA.jpg", fit: BoxFit.cover),
              ),
            ),
            const SizedBox(height: 8),
            const Text("Traje Slim Fit", style: TextStyle(fontWeight: FontWeight.bold)),
            const Text("\$2,450 MXN", style: TextStyle(color: Colors.black54)),
          ],
        ),
      ),
    );
  }
}