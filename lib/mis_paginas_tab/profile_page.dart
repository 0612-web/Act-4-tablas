import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(radius: 60, backgroundImage: NetworkImage("https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?w=200")),
            const SizedBox(height: 20),
            const Text("Usuario VIP", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 40),
            _button("Mis Compras"),
            _button("Configuración"),
            _button("Soporte"),
          ],
        ),
      ),
    );
  }

  Widget _button(String text) => Padding(
    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
    child: OutlinedButton(onPressed: () {}, style: OutlinedButton.styleFrom(minimumSize: const Size(double.infinity, 45)), child: Text(text)),
  );
}