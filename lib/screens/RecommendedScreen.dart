import 'package:allstar_app_ui/screens/MovieScreen.dart';
import 'package:allstar_app_ui/screens/Studio_detailsPage.dart';
import 'package:allstar_app_ui/screens/disneyStudio.dart';
import 'package:allstar_app_ui/screens/pixers.dart';
import 'package:allstar_app_ui/screens/starWar.dart';
import 'package:flutter/material.dart';

import '../widgets/LogoContainer.dart';
import '../widgets/watchListContainer.dart';

class RecommendScreen extends StatefulWidget {
  const RecommendScreen({super.key});

  @override
  State<RecommendScreen> createState() => _RecommendScreenState();
}

class _RecommendScreenState extends State<RecommendScreen> {
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
                        image: AssetImage("assets/endgame.jpg"),
                        fit: BoxFit.cover)),
              ),

             SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: (){
                    Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DisneyDetailsScreen(),
                            ));
                      
                    },
                    child: LogoContainer(logo: "assets/disney.png",)),
                  
                    InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => StudioDetailsScreen(),
                          ));
                      },
                      child: LogoContainer(
                      logo: "assets/marvel.jpg",
                                      ),
                    ),

                  InkWell(
                    onTap: (){
                      Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => StarWarDetailsScreen(),
                            ));
                    },
                    child: LogoContainer(logo: "assets/starwar.jpg")),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PixerDetailsScreen(),
                            ));
                    },
                    child: LogoContainer(logo: "assets/pixar.png")),
                 
                ],
              ),


             


             





              SizedBox(
                height: 20,
              ),

              Row(
                children: [
                  Text(
                    "Documentries",
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
                    WatchListWidget(dauration: "", image: "assets/hackers.jpg"),
                    SizedBox(
                      width: 10,
                    ),
                    WatchListWidget(dauration: "", image: "assets/freesolo.jpg"),
                    SizedBox(
                      width: 10,
                    ),
                    WatchListWidget(
                        dauration: "Hourly", image: "assets/tomarrow.jpg"),
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
                    "Movies",
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
                    WatchListWidget(dauration: "", image: "assets/brooklin.jpg"),
                    SizedBox(
                      width: 10,
                    ),
                    WatchListWidget(
                        dauration: "", image: "assets/Dissident.jpg"),
                    SizedBox(
                      width: 10,
                    ),
                    WatchListWidget(dauration: "", image: "assets/batt.jpg"),
                    SizedBox(
                      width: 10,
                    ),
                    WatchListWidget(dauration: "", image: "assets/joker.jpg"),
                    SizedBox(
                      width: 10,
                    ),
                    WatchListWidget(dauration: "", image: "assets/Betaal.jpg"),
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





