// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                  viewportFraction: 1
                ),
                items: ["images/teste1.png", "images/teste2.png", "images/teste3.png", "images/teste4.png", "images/teste5.png"].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                          color: Colors.amber
                        ),
                        child: Image(image: AssetImage(i.toString()), fit: BoxFit.fill,)
                      );
                    },
                  );
                }).toList(),  
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
                        )
                      ),
                      onPressed: (){}, 
                      icon: Icon(Icons.abc),
                      label: Text('test'),
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
                        )
                      ),
                      onPressed: (){}, 
                      icon: Icon(Icons.abc),
                      label: Text('test'),
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