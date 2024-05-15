// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'dart:developer';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/utils.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final List<String> _listaIcon = ['icons/Balada.png', 'icons/Bares.png', 'icons/EventoPublico.png', 'icons/Lanchonete.png', 'icons/Restaurante.png'];
  final List<String> _listaCateg = ['   Baladas', '   Bares', '   Eventos Públicos', '   Lanchonetes', '   Restaurantes'];

  int _imagemSelecionada = 0;

  CarouselController _carouselController = CarouselController();

  imagemSelecionada() {
    _imagemSelecionada++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text("Eventos"),
        titleTextStyle: TextStyle(fontSize: 25, color: Colors.white),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
      ),

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

              Padding(padding: EdgeInsets.only(top: 50)),
              CarouselSlider(
                options: CarouselOptions(
                  height: 200,
                  enlargeCenterPage: true,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    _imagemSelecionada = index;
                  },
                ),
                items: ["images/teste1.png", "images/teste2.png", "images/teste3.png", "images/teste4.png", "images/teste5.png"].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.white,
                            width: 7
                          ),
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage(
                              i.toString(),
                            ),
                            fit: BoxFit.cover,
                          )
                        ),
                        child: ElevatedButton(
                          onPressed: (){
                            
                          }, 
                          child: Text(''),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            maximumSize: Size(double.maxFinite, double.maxFinite),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)
                            ),
                            elevation: 0,
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),  
              ),

              Padding(
                padding: EdgeInsets.only(top: 50),
                child: Card(
                  child: SizedBox(
                    width: double.maxFinite,
                    height: 50,
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        
                        alignment: Alignment.centerLeft,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)
                        ),
                        textStyle: TextStyle(fontSize: 20),
                      ),
                      onPressed: (){}, 
                      icon: Image(image: AssetImage(_listaIcon[0].toString()), height: 40, filterQuality: FilterQuality.high), 
                      label: Text(_listaCateg[0]),
                      
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 25),
                child: Card(
                  child: SizedBox(
                    width: double.maxFinite,
                    height: 50,
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        alignment: Alignment.centerLeft,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)
                        ),
                        textStyle: TextStyle(fontSize: 20),
                      ),
                      onPressed: (){}, 
                      icon: Image(image: AssetImage(_listaIcon[1].toString()), height: 40, filterQuality: FilterQuality.high),
                      label: Text(_listaCateg[1]),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 25),
                child: Card(
                  child: SizedBox(
                    width: double.maxFinite,
                    height: 50,
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        alignment: Alignment.centerLeft,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)
                        ),
                        textStyle: TextStyle(fontSize: 20),
                      ),
                      onPressed: (){}, 
                      icon: Image(image: AssetImage(_listaIcon[2].toString()), height: 40, filterQuality: FilterQuality.high),
                      label: Text(_listaCateg[2]),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 25),
                child: Card(
                  child: SizedBox(
                    width: double.maxFinite,
                    height: 50,
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        alignment: Alignment.centerLeft,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)
                        ),
                        textStyle: TextStyle(fontSize: 20),
                      ),
                      onPressed: (){}, 
                      icon: Image(image: AssetImage(_listaIcon[3].toString()), height: 40, filterQuality: FilterQuality.high),
                      label: Text(_listaCateg[3]),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 25),
                child: Card(
                  child: SizedBox(
                    width: double.maxFinite,
                    height: 50,
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        alignment: Alignment.centerLeft,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)
                        ),
                        textStyle: TextStyle(fontSize: 20),
                      ),
                      onPressed: (){}, 
                      icon: Image(image: AssetImage(_listaIcon[4].toString()), height: 40, filterQuality: FilterQuality.high),
                      label: Text(_listaCateg[4]),
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}