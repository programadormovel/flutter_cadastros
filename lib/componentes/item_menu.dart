import 'package:flutter/material.dart';

class ItemMenu extends StatelessWidget {
  final String? label;
  final IconData? icone;
  final BuildContext? contextMenu;
  final String? rota;
  final Color? cor;

  const ItemMenu({
    Key? key,
    this.label,
    this.icone,
    this.contextMenu,
    this.rota,
    this.cor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(icone!, color: cor),
                    ),
                    Text(label!, 
                      style: TextStyle(
                        color: cor, 
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ), 
              onTap: () => {Navigator.pushNamed(contextMenu!, rota!)},
              );
  }
}