import 'package:allstar_app_ui/screens/MovieScreen.dart';
import 'package:flutter/material.dart';

import '../widgets/watchListContainer.dart';

class  WebSeriesScreen extends StatefulWidget {
  const  WebSeriesScreen({super.key});

  @override
  State< WebSeriesScreen> createState() => _WebSeriesScreenState();
}

class _WebSeriesScreenState extends State< WebSeriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff262626),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: [
                  Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/play.png"))),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "Light",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Text(
                        "Star",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 30,
                      )),
                ],
              ),

              SizedBox(
                height: 10,
              ),
              Container(
                height: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/incep.jpg"),
                        fit: BoxFit.cover)),
              ),

              // Continue Watching list

              SizedBox(
                height: 20,
              ),
              Text(
                "Continue Watching",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 18),
              ),
              SizedBox(
                height: 10,
              ),

              Container(
                height: 150,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 150,
                        width: 200,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 15,
                              child: Stack(children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20)),
                                  child: Container(
                                    // width: 150,

                                    height: 150,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image:
                                                AssetImage("assets/movie2.jpg"),
                                            fit: BoxFit.cover)),
                                  ),
                                ),
                                Positioned(
                                    bottom: 10,
                                    left: 10,
                                    child: Icon(
                                      Icons.play_circle,
                                      color: Colors.white,
                                    )),
                              ]),
                            ),
                            Expanded(
                              flex: 1,
                              child: Row(children: [
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(50),
                                          bottomRight: Radius.circular(50)),
                                      color: Colors.red,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(50),
                                          bottomRight: Radius.circular(50)),
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 150,
                        width: 200,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 15,
                              child: Stack(children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20)),
                                  child: Container(
                                    // width: 150,

                                    height: 150,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image:
                                                AssetImage("assets/movie3.jpg"),
                                            fit: BoxFit.cover)),
                                  ),
                                ),
                                Positioned(
                                    bottom: 10,
                                    left: 10,
                                    child: Icon(
                                      Icons.play_circle,
                                      color: Colors.white,
                                    )),
                              ]),
                            ),
                            Expanded(
                              flex: 1,
                              child: Row(children: [
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(50),
                                          bottomRight: Radius.circular(50)),
                                      color: Colors.red,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(50),
                                          bottomRight: Radius.circular(50)),
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 150,
                        width: 200,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 15,
                              child: Stack(children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20)),
                                  child: Container(
                                    // width: 150,

                                    height: 150,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image:
                                                AssetImage("assets/movie4.jpg"),
                                            fit: BoxFit.cover)),
                                  ),
                                ),
                                Positioned(
                                    bottom: 10,
                                    left: 10,
                                    child: Icon(
                                      Icons.play_circle,
                                      color: Colors.white,
                                    )),
                              ]),
                            ),
                            Expanded(
                              flex: 1,
                              child: Row(children: [
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(50),
                                          bottomRight: Radius.circular(50)),
                                      color: Colors.red,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(50),
                                          bottomRight: Radius.circular(50)),
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: 20,
              ),

              Row(
                children: [
                  Text(
                    "Trending Movie",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  )
                ],
              ),

              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    WatchListWidget(
                        dauration: "Die Hard", image: "assets/dieHard.jpg"),
                    SizedBox(
                      width: 10,
                    ),
                    WatchListWidget(
                        dauration: "HomeLand", image: "assets/homeland.jpg"),
                    SizedBox(
                      width: 10,
                    ),
                    WatchListWidget(
                        dauration: "Hourly", image: "assets/hou.jpg"),
                    SizedBox(
                      width: 10,
                    ),
                    WatchListWidget(
                        dauration: "Joker", image: "assets/joker.jpg"),
                    SizedBox(
                      width: 10,
                    ),
                    WatchListWidget(
                        dauration: "Looper", image: "assets/looper.jpg"),
                    SizedBox(
                      width: 10,
                    ),
                   
                  ],
                ),
              ),

              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "Action Movie",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  )
                ],
              ),

              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    WatchListWidget(
                        dauration: "Run", image: "assets/run.jpg"),
                    SizedBox(
                      width: 10,
                    ),
                    WatchListWidget(
                        dauration: "Avatar", image: "assets/avat.jpg"),
                    SizedBox(
                      width: 10,
                    ),
                    WatchListWidget(
                        dauration: "Guest", image: "assets/make.jpg"),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "Comedy Movies",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  )
                ],
              ),

              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    WatchListWidget(
                        dauration: "Dhamal",
                        image: "assets/dhmaal.jpg"),
                    SizedBox(
                      width: 10,
                    ),
                    WatchListWidget(
                        dauration: "Malamal",
                        image: "assets/malamal.jpg"),
                    SizedBox(
                      width: 10,
                    ),
                    WatchListWidget(
                        dauration: "Chupke Chupke",
                        image: "assets/chupke.jpg"),
                    SizedBox(
                      width: 10,
                    ),
                    WatchListWidget(
                        dauration: "All The Best",
                        image: "assets/allthebest.jpg"),
                    SizedBox(
                      width: 10,
                    ),
                   
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

