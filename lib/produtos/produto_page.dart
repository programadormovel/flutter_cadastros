import 'dart:convert';

import 'package:flutter/material.dart';

import '../models/produto_model.dart';
import 'produto_controller.dart';

class ProdutoPage extends StatefulWidget {
  const ProdutoPage({super.key});

  @override
  State<ProdutoPage> createState() => _ProdutoPageState();
}

class _ProdutoPageState extends State<ProdutoPage> {

  final produtosController = ProdutoController();
  late List<ProdutoModel> lista = List.empty(growable: true);

  @override
  void initState() {
    // TODO: implement initState
    super.initState(); 
    listar();
  }

  Future<void> listar() async {
    lista = await produtosController.listarProdutos();

    setState(() {

    }); 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: ListView.builder(
          itemCount: lista.length,
          scrollDirection: Axis.vertical,  
          itemBuilder: (context, index) {
            return ListTile(
              title: Image.memory(lista.elementAt(index).getFoto!),
              subtitle: Text(lista.elementAt(index).getDescricao!),
            );
          })
        ),  
    );
  }
}