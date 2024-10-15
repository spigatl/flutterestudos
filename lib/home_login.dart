import 'package:flutter/material.dart';
import 'package:meucontrole/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('assets/loreipsum.png', height: 220, fit: BoxFit.cover),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 14, top: 14, bottom: 10),
              child: Form(
                key: _formKey,
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        icon: Icon(Icons.person),
                        labelText: 'Username *',
                      ),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        icon: Icon(Icons.password),
                        labelText: 'Password *',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 14, top: 14, bottom: 10),
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, Routes.home);
                    },
                    child: const Text('Entrar'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
