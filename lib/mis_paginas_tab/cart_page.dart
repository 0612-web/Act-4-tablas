import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("MI BOLSA")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) => Card(
                  child: ListTile(
                    leading: Image.network("https://raw.githubusercontent.com/0612-web/imagenes-github/refs/heads/main/pedisoZARAAA.jfif", fit: BoxFit.cover),
                    title: const Text("Sneakers Red Edition"),
                    subtitle: const Text("Cantidad: 1"),
                    trailing: const Text("\$1,899", style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black, minimumSize: const Size(double.infinity, 55)),
              onPressed: () {},
              child: const Text("PAGAR", style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}