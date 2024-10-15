import 'package:flutter/material.dart';
import 'package:meucontrole/home_login.dart';
import 'home_page.dart';
import 'home_password.dart';

class Routes {
  static const String home = '/';
  static const String password = '/password';
  static const String login = '/login';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case password:
        return MaterialPageRoute(builder: (_) => const HomePassword());
      case login:
        return MaterialPageRoute(builder: (_) => const LoginPage());
      default:
        return MaterialPageRoute(
            builder: (_) => const HomePage()); // Redireciona para Home por padrão
    }
  }
}
