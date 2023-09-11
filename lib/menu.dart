import 'package:flutter/material.dart';
import 'package:flutter_cadastros/componentes/item_menu.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    var tamanhoTela = MediaQuery.sizeOf(context);
    var largura = tamanhoTela.width;
    var altura = tamanhoTela.height;

    return Scaffold(
      appBar: AppBar(
        title: Text('Sistema de Cadastros'),
        toolbarHeight: altura * 0.3,
        elevation: 8.0,
      ),
      drawer: Drawer(
        backgroundColor: Color.fromRGBO(0, 100, 255, 0.5),
        elevation: 4.0,
        child: Column(
          children: [
            ItemMenu(label: 'Listar Produtos',
                  icone: Icons.card_giftcard,
                  contextMenu: context,
                  rota: '/produtos',
                  cor: Colors.amber,
                  ),

            ItemMenu(label: 'Cadastrar Produtos',
                  icone: Icons.rocket,
                  contextMenu: context,
                  rota: '/login',
                  cor: Colors.white,
                  ),
          ],
        ),
        ),
      body: Container(child: Text('MENU'),),);
  }
}