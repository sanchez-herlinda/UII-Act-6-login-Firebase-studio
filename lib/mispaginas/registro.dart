import 'package:flutter/material.dart';

class Registro extends StatelessWidget {
  const Registro({super.key});

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
              Text("Únete a La Roma", style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: colorPrincipal)),
              const Text("Crea tu cuenta para disfrutar de la mejor comida italiana", style: TextStyle(color: Colors.black54, fontSize: 16)),
              const SizedBox(height: 40),
              
              // Campos de texto
              TextField(
                decoration: InputDecoration(
                  labelText: "Nombre", 
                  prefixIcon: Icon(Icons.person_outline, color: colorPrincipal),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: colorPrincipal, width: 2), borderRadius: BorderRadius.circular(10)),
                )
              ),
              const SizedBox(height: 20),
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
                child: const Text("CREAR CUENTA", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ),
              const SizedBox(height: 30),
              
              // Texto Login
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("¿Ya tienes una cuenta? "),
                  GestureDetector(
                    onTap: () => Navigator.pushReplacementNamed(context, '/login'),
                    child: Text("Inicia sesión", style: TextStyle(fontWeight: FontWeight.bold, color: colorPrincipal, fontSize: 16)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}