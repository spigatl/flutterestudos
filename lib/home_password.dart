import 'package:flutter/material.dart';
import 'package:meucontrole/routes.dart';

class HomePassword extends StatelessWidget {
  const HomePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Esqueceu a senha')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, Routes.home);
          },
          child: const Text('Ir para Detalhes'),
        ),
      ),
    );
  }
}
