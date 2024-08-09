// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {

  bool _confSenha = true;
  bool _senha = true;
  String _iconConfSenha = "icons/ShowPass.png";
  String _iconSenha = "icons/ShowPass.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: 
        BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(22, 118, 155, 1),
              Color.fromRGBO(2, 37, 67, 1)
            ]
          )
        ),

        child: SingleChildScrollView(
          padding: EdgeInsets.all(32),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 200),
                child: TextField(
                  keyboardType: TextInputType.text,
                  decoration: 
                    InputDecoration(
                      labelText: "Nome Completo",
                      enabledBorder: 
                        OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)
                        ),
                      focusedBorder: 
                        OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)
                        ),
                      labelStyle: TextStyle(color: Colors.white),
                      floatingLabelAlignment: FloatingLabelAlignment.center,
                    ),
                    style: TextStyle(fontSize: 20, color: Colors.white),
                    //controller:
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: 
                    InputDecoration(
                      labelText: "E-mail",
                      enabledBorder: 
                        OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)
                        ),
                      focusedBorder: 
                        OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)
                        ),
                      labelStyle: TextStyle(color: Colors.white),
                      floatingLabelAlignment: FloatingLabelAlignment.center,
                    ),
                    style: TextStyle(fontSize: 20, color: Colors.white),
                    //controller:
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: TextField(
                  keyboardType: TextInputType.text,
                  decoration: 
                    InputDecoration(
                      labelText: "Senha",
                      suffixIcon: IconButton(
                        onPressed: (){
                          if(_senha){
                            setState(() {
                              _senha = !_senha;
                              _iconSenha = "icons/HidePass.png";
                            });
                          }else{
                            setState(() {
                              _senha = !_senha;
                              _iconSenha = "icons/ShowPass.png";
                            });
                          }
                        },
                        icon: ImageIcon(AssetImage(_iconSenha)),
                        color: Colors.white,
                      ),
                      enabledBorder: 
                        OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)
                        ),
                      focusedBorder: 
                        OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)
                        ),
                      labelStyle: TextStyle(color: Colors.white),
                      floatingLabelAlignment: FloatingLabelAlignment.center,
                    ),
                    style: TextStyle(fontSize: 20, color: Colors.white),
                    obscureText: _senha,
                    //controller:
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: TextField(
                  keyboardType: TextInputType.text,
                  decoration: 
                    InputDecoration(
                      labelText: "Confirmar Senha",
                      suffixIcon: IconButton(
                        onPressed: (){
                          if(_confSenha){
                            setState(() {
                              _confSenha = !_confSenha;
                              _iconConfSenha = "icons/HidePass.png";
                            });
                          }else{
                            setState(() {
                              _confSenha = !_confSenha;
                              _iconConfSenha = "icons/ShowPass.png";
                            });
                          }
                        },
                        icon: ImageIcon(AssetImage(_iconConfSenha)),
                        color: Colors.white,
                      ),
                      enabledBorder: 
                        OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)
                        ),
                      focusedBorder: 
                        OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)
                        ),
                      labelStyle: TextStyle(color: Colors.white),
                      floatingLabelAlignment: FloatingLabelAlignment.center,
                    ),
                    style: TextStyle(fontSize: 20, color: Colors.white),
                    obscureText: _confSenha,
                    //controller:
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 75),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Color.fromRGBO(22, 118, 155, 1), foregroundColor: Colors.white, fixedSize: Size(170, 20)),
                      onPressed: (){
                        Navigator.pop(context);
                      }, 
                      child: Text("Salvar", style: TextStyle(fontSize: 17),)
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Color.fromRGBO(22, 118, 155, 1), foregroundColor: Colors.white, fixedSize: Size(170, 20)),
                      onPressed: (){
                        Navigator.pop(context);
                      }, 
                      child: Text("Cancelar", style: TextStyle(fontSize: 17),)
                    ),
                  ],
                ),
              )
            ],
        ),
        ),
      ),
    );
  }
}