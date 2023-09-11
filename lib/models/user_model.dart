import 'dart:convert';

class UserModel {
  dynamic id;
  dynamic usuario; 
  dynamic email;
  dynamic senha;
  dynamic nivelAcesso;
  dynamic ativo;
  dynamic emailConfirmado;
  dynamic telefoneConfirmado;
  dynamic dataDeRegistro;

  UserModel({var id, var email, var usuario, var senha, var nivelAcesso, 
              var ativo, var emailConfirmado, var telefoneConfirmado, 
              var dataDeRegistro});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'email': email,
      'usuario': usuario,
      'senha': senha,
      'nivelAcesso': nivelAcesso, 
      'ativo': ativo,
      'emailConfirmado': emailConfirmado,
      'telefoneConfirmado': telefoneConfirmado,
      'dataDeRegistro': dataDeRegistro,
    };
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromMap(Map<dynamic, dynamic> map) {
    return UserModel(
      id: map['id'],
      email: map['email'],
      usuario: map['usuario'],
      senha: map['senha'],
      nivelAcesso: map['nivelAcesso'],
      ativo: map['ativo'],
      emailConfirmado: map['emailConfirmado'],
      telefoneConfirmado: map['telefoneConfirmado'],
      dataDeRegistro: map['dataDeRegistro'],
    );
  }

  factory UserModel.fromJson(String json) =>
      UserModel.fromMap(jsonDecode(json));

  UserModel copyWith({
    int? id,
    String? email,
    String? usuario,
    String? senha,
    int? nivelAcesso,
    int? ativo,
    bool? emailConfirmado,
    bool? telefoneConfirmado,
    DateTime? dataDeRegistro,

  }) {
    return UserModel(
      id: id ?? this.id,
      email: email ?? this.email,
      usuario: usuario ?? this.usuario,
      senha: senha ?? this.senha,
      nivelAcesso: nivelAcesso ?? this.nivelAcesso,
      ativo: ativo ?? this.ativo,
      emailConfirmado: emailConfirmado ?? this.emailConfirmado,
      telefoneConfirmado: telefoneConfirmado ?? this.telefoneConfirmado,
      dataDeRegistro: dataDeRegistro ?? this.dataDeRegistro,
    );
  }

  // factory UserModel.fromJson(String source) => UserModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'UserModel(id: $id, email: $email, usuario: $usuario,  senha: $senha, nivelAcesso: $nivelAcesso, ativo: $ativo, emailConfirmado: $emailConfirmado, telefoneConfirmado: $telefoneConfirmado, dataDeRegistro: $dataDeRegistro)';
  }
  

}