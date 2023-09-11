import 'dart:convert';
import 'package:dio/dio.dart';
import '../models/produto_model.dart';

class ProdutoController {
  Dio dio = new Dio();
  ProdutoModel produtoModel = ProdutoModel();

  Future<List<ProdutoModel>> listarProdutos() async {
    List<ProdutoModel> produtos = List.empty(growable: true);
    try {
      dynamic response = await dio.get('https://localhost:7296/api/Produto',
          options: Options(contentType: 'application/json; charset=UTF-8'));
      if (response.statusCode == 200) {
        for (Map<String, dynamic> item in response.data) {
          ProdutoModel p = ProdutoModel();
          p.setId(item.values.elementAt(0));
          p.setDescricao(descricao: item.values.elementAt(1));
          p.setFoto(base64.decode(item.values.elementAt(8)));
          print(item.values.elementAt(1));
          produtos.add(p);
        }
      }
    } catch (e) {
      print(e);
    }
    return produtos;
  }
}
