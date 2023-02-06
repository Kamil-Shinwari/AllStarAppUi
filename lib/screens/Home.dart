import 'package:allstar_app_ui/screens/AllMovieScreen.dart';
import 'package:allstar_app_ui/screens/Movie_downloadScreen.dart';
import 'package:flutter/material.dart';

bool isShow = true;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  void _newshowModel(BuildContext context){
    showBottomSheet(
      backgroundColor: Color(0xff262626),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      context: context,
      builder: (context) {
        return Container(
          height: 300,
          decoration: BoxDecoration(color: Color(0xff232323)),
        );
      },
    );
  }
  void _showModalSheet(BuildContext context,String url) {
    showModalBottomSheet(
        context: context,
        backgroundColor: Color(0xff262626),
        shape: RoundedRectangleBorder(
     borderRadius: BorderRadius.circular(20.0),
  ),
        builder: (builder) {
          return new Container(
            height:isShow? 300.0:0.0,
          decoration: BoxDecoration(
              color: Color(0xff262626),
              borderRadius: BorderRadius.only(topLeft:Radius.circular(20),topRight: Radius.circular(20)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(children: [
                    Container(
                      height: 180,
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("$url"),fit: BoxFit.cover),
                      
                      ),
                    ),
                    
                ],),

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: BottomSheetContainer(text: "Watch list", icon:Icons.add ),
                        
                        ),
                        SizedBox(width: 10,),
                      Expanded(
                          child: InkWell(
                            onTap: (){
                              _newshowModel(context);
                              setState(() {
                                isShow==true;
                              });
                            },
                            child: BottomSheetContainer(text: "Watch"))
                      ),
                       SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: BottomSheetContainer(text: "Share",)),
                       SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
               
                Text("A journey of Fantasy and romance ",style: TextStyle(color: Colors.white.withOpacity(0.3)),)
              ],
            ),
          );
        });
  }
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
                        image: AssetImage("assets/movie3.jpg"),
                        fit: BoxFit.cover)),
              ),

              // Continue Watching list

              SizedBox(
                height: 20,
              ),
              Text(
                "Continue Watching",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
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
                    "Watch List",
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
                        dauration: "S1 E1 58:00", image: "assets/GameOf.jpg"),
                    SizedBox(
                      width: 10,
                    ),
                    WatchListWidget(
                        dauration: "S1 E2 54:00", image: "assets/GameOf.jpg"),
                    SizedBox(
                      width: 10,
                    ),
                    WatchListWidget(
                        dauration: "S1 E3 58:00", image: "assets/GameOf.jpg"),
                    SizedBox(
                      width: 10,
                    ),
                    WatchListWidget(
                        dauration: "S1 E4 54:00", image: "assets/GameOf.jpg"),
                    SizedBox(
                      width: 10,
                    ),
                    WatchListWidget(
                        dauration: "S1 E5 58:00", image: "assets/GameOf.jpg"),
                    SizedBox(
                      width: 10,
                    ),
                    WatchListWidget(
                        dauration: "S1 E6 54:00", image: "assets/GameOf.jpg"),
                    SizedBox(
                      width: 10,
                    ),
                    WatchListWidget(
                        dauration: "S1 E7 58:00", image: "assets/GameOf.jpg"),
                    SizedBox(
                      width: 10,
                    ),
                    WatchListWidget(
                        dauration: "S1 E8 54:00", image: "assets/GameOf.jpg"),
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
                    "Trending Now",
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
                    InkWell(
                    onTap: (){
                      _showModalSheet(context, "assets/thewire.jpg");
                    },
                      child: WatchListWidget(
                          dauration: "The Wire", image: "assets/thewire.jpg"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: (){
                        _showModalSheet(context, "assets/luther.jpg");
                      },
                      child: WatchListWidget(
                          dauration: "Luther", image: "assets/luther.jpg"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: (){
                         _showModalSheet(context, "assets/homeland.jpg");
                      },
                      child: WatchListWidget(
                          dauration: "homeland", image: "assets/homeland.jpg"),
                    ),
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
                    "HBO Original",
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
                    InkWell(
                      onTap: (){
                        _showModalSheet(context, 'assets/GameOf.jpg');
                      },
                      child: WatchListWidget(
                          dauration: "Game Of Throne",
                          image: "assets/GameOf.jpg"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: (){
                        _showModalSheet(context, "assets/gang.jpg");
                      },
                      child: WatchListWidget(
                          dauration: "Gang Of Wassipur",
                          image: "assets/gang.jpg"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: (){
                        _showModalSheet(context, 'assets/emancipation.jpg');
                      },
                      child: WatchListWidget(
                          dauration: "Emancipation",
                          image: "assets/emancipation.jpg"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: (){
                        _showModalSheet(context, "assets/brahMastar.jpg");
                      },
                      child: WatchListWidget(
                          dauration: "BrahmaAstar",
                          image: "assets/brahMastar.jpg"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: (){
                        _showModalSheet(context, "assets/blur.jpg");
                      },
                      child: WatchListWidget(
                          dauration: "Blur", image: "assets/blur.jpg"),
                    ),
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
                    "All Movies",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => AllMovieScreen(),));
                    },
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
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
                        dauration: "She",
                        image: "assets/she.jpg"),
                    SizedBox(
                      width: 10,
                    ),
                    WatchListWidget(
                        dauration: "Star War",
                        image: "assets/starwar.jpg"),
                    SizedBox(
                      width: 10,
                    ),
                    WatchListWidget(
                        dauration: "Prison Break",
                        image: "assets/prison.jpg"),
                    SizedBox(
                      width: 10,
                    ),
                    WatchListWidget(
                        dauration: "Strange Thing",
                        image: "assets/strange.jpg"),
                    SizedBox(
                      width: 10,
                    ),
                    WatchListWidget(
                        dauration: "Blur", image: "assets/blur.jpg"),
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

class BottomSheetContainer extends StatelessWidget {
  final String text;
  final IconData? icon;

  const BottomSheetContainer({super.key, required this.text,  this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(10),
      ),
      
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Row(children: [
          Icon(icon,color: Colors.white,),
        
          Text("$text",style: TextStyle(
            fontSize: 12,
            color: Colors.white,fontWeight: FontWeight.bold),)
        ]),
      ),
      );
  }
}

class WatchListWidget extends StatelessWidget {
  final String dauration;
  final String image;

  const WatchListWidget(
      {super.key, required this.dauration, required this.image});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 150,
          width: 250,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage("$image"), fit: BoxFit.cover)),
        ),
        Positioned(
            bottom: 20,
            right: 10,
            child: Text(
              "$dauration",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ))
      ],
    );
  }

  
}
