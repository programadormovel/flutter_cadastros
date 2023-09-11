import 'dart:convert';
import 'dart:typed_data';

class ProdutoModel{
  late final int id;
  late final String descricao;
  late final Uint8List foto;

  ProdutoModel({id, descricao, foto});

  int get getId {
    return id;
  }

  String get getDescricao{
    return descricao;
  }

  Uint8List get getFoto {
    return foto;
  }

  Map<String, dynamic> toMap()=>{
    "id": id,
    "descricao": descricao,
    "foto": foto,
  };

  String toJson() => jsonEncode(toMap());

  factory ProdutoModel.fromMap(Map<String, dynamic> map){
  return ProdutoModel(
    id: map['id'],
    descricao: map['descricao'],
    foto: map['foto']);
  }

  factory ProdutoModel.fromJson(String json) => ProdutoModel.fromMap(jsonDecode(json));

  void setId(elementAt) {this.id = elementAt;}

  void setDescricao({required descricao}) {this.descricao = descricao;}

  void setFoto(Uint8List decode) {this.foto = decode;}

}