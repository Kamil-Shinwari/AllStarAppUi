import 'dart:convert';

import 'package:allstar_app_ui/widgets/GridViewMovieContainer.dart';
import 'package:allstar_app_ui/widgets/myrowWidget.dart';
import 'package:flutter/material.dart';

class StudioDetailsScreen extends StatefulWidget {
  const StudioDetailsScreen({super.key});

  @override
  State<StudioDetailsScreen> createState() => _StudioDetailsScreenState();
}

class _StudioDetailsScreenState extends State<StudioDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff333333),
      body: SingleChildScrollView(
        child: Column(children: [
          Stack(
            children: [
              Container(
                height: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/endgame.jpg"),
                        fit: BoxFit.cover)),
              ),
              Positioned(
                left: 15,
                top: 30,
                child: IconButton(onPressed: (){
                  Navigator.pop(context);
                },
              icon: Icon(Icons.arrow_back,color: Colors.white,),
              )),
              Positioned(
                left: 10,
                right: 10,
                top: MediaQuery.of(context).size.height/3-60,
                child: Image.asset("assets/marvel.jpg",height: 90,))
            ],
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                MyRowWidget(text: "Marvel Movie", icon: Icons.arrow_forward_ios),
              ],
            ),
          ),
      
          GridView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: [
              MovieContainerGridView(url: "assets/marvel/avanger.jpg"),
               MovieContainerGridView(url: "assets/marvel/hulk.jpg"),
               MovieContainerGridView(url: "assets/marvel/ironman.jpg"),
               MovieContainerGridView(url: "assets/marvel/ironman2.jpg"),
               MovieContainerGridView(url: "assets/marvel/captan.jpg"),
                MovieContainerGridView(url: "assets/marvel/thor.jpg"),
      
            ],
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2)),
        ]),
      ),
    );
  }
}


