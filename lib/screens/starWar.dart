import 'dart:convert';

import 'package:allstar_app_ui/widgets/GridViewMovieContainer.dart';
import 'package:allstar_app_ui/widgets/myrowWidget.dart';
import 'package:flutter/material.dart';

class StarWarDetailsScreen extends StatefulWidget {
  const StarWarDetailsScreen({super.key});

  @override
  State<StarWarDetailsScreen> createState() => _StarWarDetailsScreenState();
}

class _StarWarDetailsScreenState extends State<StarWarDetailsScreen> {
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
                        image: AssetImage("assets/movie1.jpg"),
                        fit: BoxFit.cover)),
              ),
              Positioned(
                  left: 15,
                  top: 30,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  )),
             
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                MyRowWidget(
                    text: "StarWar Movie", icon: Icons.arrow_forward_ios),
              ],
            ),
          ),
          GridView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: [
                MovieContainerGridView(url: "assets/movie1.jpg"),
                MovieContainerGridView(url: "assets/movie2.jpg"),
                MovieContainerGridView(url: "assets/movie3.jpg"),
                MovieContainerGridView(url: "assets/movie4.jpg"),
                MovieContainerGridView(url: "assets/movie5.jpg"),
                MovieContainerGridView(url: "assets/movie6.jpg"),
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
