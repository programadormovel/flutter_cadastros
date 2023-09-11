import 'package:flutter/material.dart';
import 'package:flutter_cadastros/login/login_usuario.dart';
import 'package:flutter_cadastros/produtos/produto_page.dart';

import 'menu.dart';

class Rotas extends StatelessWidget {
  const Rotas({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginUsuario(),
        '/menu' : (context) => Menu(),
        '/produtos' : (context) => ProdutoPage(),
      },
    );
  }
}