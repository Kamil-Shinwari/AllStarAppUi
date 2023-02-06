import 'dart:convert';

import 'package:allstar_app_ui/widgets/GridViewMovieContainer.dart';
import 'package:allstar_app_ui/widgets/myrowWidget.dart';
import 'package:flutter/material.dart';

class DisneyDetailsScreen extends StatefulWidget {
  const DisneyDetailsScreen({super.key});

  @override
  State<DisneyDetailsScreen> createState() => _DisneyDetailsScreenState();
}

class _DisneyDetailsScreenState extends State<DisneyDetailsScreen> {
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
                        image: AssetImage("assets/dieHard.jpg"),
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
              Positioned(
                  left: 10,
                  right: 10,
                  top: MediaQuery.of(context).size.height / 3 - 60,
                  child: Image.asset(
                    "assets/disney.png",
                    height: 90,
                  ))
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
                    text: "Marvel Movie", icon: Icons.arrow_forward_ios),
              ],
            ),
          ),
          GridView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: [
                MovieContainerGridView(url: "assets/marvel/snowAndWhite.jpg"),
                MovieContainerGridView(url: "assets/impact.jpg"),
                MovieContainerGridView(url: "assets/hou.jpg"),
               MovieContainerGridView(url: "assets/incep.jpg"),
               MovieContainerGridView(url: "assets/khan.jpg"),
               MovieContainerGridView(url: "assets/lost.jpg"),
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
