import 'dart:convert';
import 'package:dio/dio.dart';
import '../models/user_model.dart';

class LoginController{
  UserModel model = UserModel();
  Dio dio = Dio();

  Future<bool> loginUsuario({required String email, required String senha}) async {

    dynamic dados = jsonEncode(<String, String>{
                    "email": email.toString(),
                    "senha": senha.toString()
                });
    try {
        dynamic response = await dio.post('https://localhost:7296/api/Login', 
              options: Options(contentType: 'application/json; charset=UTF-8'), 
              data: dados);
        if(response.statusCode == 200){
          //print(response.data);
          var resultado = Map.from(response.data);
          model.usuario = resultado.values.elementAt(2);
          //print(model.usuario);
          return true;
        }
    } catch (e) {
      print(e);
    }
    return false;
  }
  
}