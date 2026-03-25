import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'mispaginas/bienvenidos.dart';
import 'mispaginas/login.dart';
import 'mispaginas/registro.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => RomaContentData(),
      child: const MyApp(),
    ),
  );
}

class RomaContentData extends ChangeNotifier {
  Color backgroundColor = const Color(0xFFFDFBF7);
  Color textColor = const Color(0xFF1A1A1A);
  Color detailColor = const Color(0xFFB71C1C);

  void setDarkTheme(){
    backgroundColor = const Color(0xFF1A1A1A);
    textColor = const Color(0xFFF9F9F9);
    detailColor = const Color(0xFFFF4D4D);
    notifyListeners();
  }

  void setLightTheme(){
    backgroundColor = const Color(0xFFF9F9F9);
    textColor = const Color(0xFF1A1A1A);
    detailColor = const Color(0xFFB71C1C);
    notifyListeners();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'La Roma',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFB71C1C)),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Bienvenidos(),
        '/login': (context) => const Login(),
        '/registro': (context) => const Registro(),
      },
    );
  }
}
