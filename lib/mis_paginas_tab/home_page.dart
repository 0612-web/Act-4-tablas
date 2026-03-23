import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Obtenemos el ancho de la pantalla para calcular el tamaño del cuadrado
    double screenWidth = MediaQuery.of(context).size.width;
    double squareSize = screenWidth * 0.8; // El cuadrado ocupará el 80% del ancho

    return Scaffold(
      backgroundColor: Colors.white, // Fondo limpio para resaltar el cuadrado
      body: Center(
        child: SingleChildScrollView( // Por si el celular es muy pequeño, evitamos errores de espacio
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // 1. EL CONTENEDOR CUADRADO
              Container(
                width: squareSize,
                height: squareSize,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(4), // Bordes ligeramente suavizados
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 20,
                      spreadRadius: 5,
                    )
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: Image.network(
                    'https://raw.githubusercontent.com/0612-web/imagenes-github/refs/heads/main/zaraaa.jfif',
                    fit: BoxFit.cover,
                    // Manejo de errores por si la imagen de GitHub falla
                    errorBuilder: (context, error, stackTrace) => const Icon(
                      Icons.image_not_supported_outlined,
                      size: 50,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 40),

              // 2. TEXTOS INFERIORES
              const Text(
                "ZARA NEW ARRIVALS",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 2,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                "TEMPORADA PRIMAVERA 2026",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey[600],
                  letterSpacing: 3,
                ),
              ),

              const SizedBox(height: 30),

              
            ],
          ),
        ),
      ),
    );
  }
}