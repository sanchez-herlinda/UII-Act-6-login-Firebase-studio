import 'package:flutter/material.dart';

class Bienvenidos extends StatelessWidget {
  const Bienvenidos({super.key});

  @override
  Widget build(BuildContext context) {
    // Obtenemos los colores del tema
    final colorPrincipal = Theme.of(context).colorScheme.primary;

    return Scaffold(
      backgroundColor: const Color(0xFFFDFBF7), // Fondo ligeramente crema
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // Fila 1: Título
              Text("La ROMA", 
                style: TextStyle(
                  fontSize: 40, 
                  fontWeight: FontWeight.bold, 
                  color: colorPrincipal,
                  letterSpacing: 2,
                )
              ),
              // Fila 2: Subtítulo
              const Text("Auténtica cucina italiana", 
                style: TextStyle(fontSize: 18, color: Colors.black54, fontStyle: FontStyle.italic)),
              // Fila 3: Imagen (Pizza/Pasta)
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  'https://images.unsplash.com/photo-1595295333158-4742f28fbd85?q=80&w=600&auto=format&fit=crop', // Imagen de pasta
                  height: 250,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              // Fila 4: Botón Login
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/login'),
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  backgroundColor: colorPrincipal,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ),
                child: const Text("INICIAR SESIÓN", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              ),
              // Fila 5: Botón Sign Up Redondeado
              OutlinedButton(
                onPressed: () => Navigator.pushNamed(context, '/registro'),
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  side: BorderSide(color: colorPrincipal, width: 2),
                ),
                child: Text("REGISTRARSE", style: TextStyle(color: colorPrincipal, fontSize: 16, fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
