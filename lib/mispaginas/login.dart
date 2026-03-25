import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final colorPrincipal = Theme.of(context).colorScheme.primary;

    return Scaffold(
      backgroundColor: const Color(0xFFFDFBF7),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: colorPrincipal),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Bentornato!", style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: colorPrincipal)),
              const Text("Inicia sesión para ordenar tus platos favoritos", style: TextStyle(color: Colors.black54, fontSize: 16)),
              const SizedBox(height: 40),
              
              // Campos de texto
              TextField(
                decoration: InputDecoration(
                  labelText: "Correo Electrónico", 
                  prefixIcon: Icon(Icons.email_outlined, color: colorPrincipal),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: colorPrincipal, width: 2), borderRadius: BorderRadius.circular(10)),
                )
              ),
              const SizedBox(height: 20),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Contraseña", 
                  prefixIcon: Icon(Icons.lock_outline, color: colorPrincipal),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: colorPrincipal, width: 2), borderRadius: BorderRadius.circular(10)),
                )
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: Text("¿Olvidaste tu contraseña?", style: TextStyle(color: Theme.of(context).colorScheme.secondary, fontWeight: FontWeight.w600)),
              ),
              const SizedBox(height: 30),
              
              // Botón
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 55),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  backgroundColor: colorPrincipal,
                  foregroundColor: Colors.white,
                ),
                child: const Text("Entrar", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ),
              const SizedBox(height: 30),
              
              // Texto Sign Up
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("¿Eres nuevo aquí? "),
                  GestureDetector(
                    onTap: () => Navigator.pushReplacementNamed(context, '/registro'),
                    child: Text("Crea una cuenta", style: TextStyle(fontWeight: FontWeight.bold, color: colorPrincipal, fontSize: 16)),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              
              // Imagen decorativa (Ingredientes/Pizza)
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    'https://images.unsplash.com/photo-1513104890138-7c749659a591?q=80&w=600&auto=format&fit=crop', // Imagen de pizza
                    height: 180,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}