// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:projeto_fyp/Cadastro.dart';
import 'package:projeto_fyp/Home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  bool _senha = true;
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

              Image(
                image: AssetImage(
                  "images/Logo-Fyp-NoBg.png"
                )
              ),

              Padding(
                padding: EdgeInsets.only(top: 50),
                child: TextField(
                  keyboardType: TextInputType.text,
                  decoration: 
                    InputDecoration(
                      labelText: "Usuário",
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
                    //controller: ,
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 32),
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
                padding: EdgeInsets.only(top: 50),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Color.fromRGBO(22, 118, 155, 1), foregroundColor: Colors.white, fixedSize: Size(170, 20)),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                  }, 
                  child: Text("Logar", style: TextStyle(fontSize: 17),)
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 25),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Color.fromRGBO(22, 118, 155, 1), foregroundColor: Colors.white, fixedSize: Size(170, 20)),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Cadastro()));
                  }, 
                  child: Text("Registrar", style: TextStyle(fontSize: 17),)
                ),
              ),

            ],
          ),
        ),
        
      ),
    );
  }
}