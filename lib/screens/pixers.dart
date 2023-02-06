import 'dart:convert';

import 'package:allstar_app_ui/widgets/GridViewMovieContainer.dart';
import 'package:allstar_app_ui/widgets/myrowWidget.dart';
import 'package:flutter/material.dart';

class PixerDetailsScreen extends StatefulWidget {
  const PixerDetailsScreen({super.key});

  @override
  State<PixerDetailsScreen> createState() => _PixerDetailsScreenState();
}

class _PixerDetailsScreenState extends State<PixerDetailsScreen> {
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
                        image: AssetImage("assets/marvel/toyStory.jpg"),
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
                    text: "Pixer Movie", icon: Icons.arrow_forward_ios),
              ],
            ),
          ),
          GridView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: [
                MovieContainerGridView(url: "assets/marvel/dumbo.jpg"),
                MovieContainerGridView(url: "assets/marvel/fantashia.jpg"),
                MovieContainerGridView(url: "assets/marvel/pinocchio.jpg"),
                MovieContainerGridView(url: "assets/marvel/toyStory.jpg"),
                
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
