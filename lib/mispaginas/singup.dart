import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final colorPrincipal = Theme.of(context).colorScheme.primary;

    return Scaffold(
      backgroundColor: const Color(0xFFFDFBF7),
      appBar: AppBar(
        backgroundColor: Colors.transparent, 
        elevation: 0, 
        iconTheme: IconThemeData(color: colorPrincipal)
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Únete a La ROMA", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: colorPrincipal)),
            const Text("Regístrate y disfruta de la mejor comida italiana", style: TextStyle(color: Colors.black54, fontSize: 16)),
            const SizedBox(height: 40),
            
            _buildInput("Nombre Completo", Icons.person_outline, context),
            _buildInput("Correo Electrónico", Icons.email_outlined, context),
            _buildInput("Contraseña", Icons.lock_outline, context, isPass: true),
            _buildInput("Confirmar Contraseña", Icons.lock_outline, context, isPass: true),
            
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 55),
                backgroundColor: colorPrincipal,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              ),
              child: const Text("Registrarse", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 30),
            
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("¿Ya eres parte de la familia? "),
                  GestureDetector(
                    onTap: () => Navigator.pushReplacementNamed(context, '/login'),
                    child: Text("Inicia Sesión", style: TextStyle(fontWeight: FontWeight.bold, color: colorPrincipal, fontSize: 16)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInput(String label, IconData icon, BuildContext context, {bool isPass = false}) {
    final colorPrincipal = Theme.of(context).colorScheme.primary;
    
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: TextField(
        obscureText: isPass,
        decoration: InputDecoration(
          labelText: label,
          prefixIcon: Icon(icon, color: colorPrincipal),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: colorPrincipal, width: 2), borderRadius: BorderRadius.circular(10)),
          filled: true,
          fillColor: Colors.white,
        ),
      ),
    );
  }
}