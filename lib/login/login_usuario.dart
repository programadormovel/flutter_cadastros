import 'package:flutter/material.dart';
import 'package:flutter_cadastros/login/login_controller.dart';

import '../menu.dart';

class LoginUsuario extends StatefulWidget {
  const LoginUsuario({super.key});

  @override
  State<LoginUsuario> createState() => _LoginUsuarioState();
}

class _LoginUsuarioState extends State<LoginUsuario> {
  final emailTextController = TextEditingController(text: 'pato@gmail.com');
  final senhaTextController = TextEditingController(text: '123456');

  final googleImage = 'assets/images/google.png';

  final loginController = LoginController();

  void logar(BuildContext context) {
    loginController.loginUsuario(email: emailTextController.text, 
            senha: senhaTextController.text)
            .then((value) => {
              if(value == true){
                Navigator.pushNamed(context, '/menu'), 
              }
            });
  }

  @override
  Widget build(BuildContext context) {
    var tamanhoTela = MediaQuery.sizeOf(context);
    var largura = tamanhoTela.width;
    var altura = tamanhoTela.height;
    return Scaffold(
        body: Container(
          color: Colors.transparent,
          alignment: Alignment.center,
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Login do Usuário', textAlign: TextAlign.center,),
              TextFormField(controller: emailTextController, 
                textAlign: TextAlign.center,),
              TextFormField(controller: senhaTextController,
                textAlign: TextAlign.center,),
              ElevatedButton(onPressed: ()=>logar(context), 
                    child: Image.asset(googleImage,
                    width: largura * 0.1,
                    height: altura * 0.1,
                    ),
                style: ButtonStyle(
                  shadowColor: MaterialStateColor
                  .resolveWith((states) => Colors.transparent),
                  backgroundColor: MaterialStateColor
                  .resolveWith((states) => Colors.transparent),),
              ),
            ],
          ),
        ),
    );
  }
}