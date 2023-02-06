

import 'package:allstar_app_ui/screens/Home.dart';
import 'package:allstar_app_ui/screens/MovieScreen.dart';
import 'package:allstar_app_ui/screens/RecommendedScreen.dart';
import 'package:allstar_app_ui/screens/Sports.dart';
import 'package:allstar_app_ui/screens/webSeriesScreen.dart';
import 'package:flutter/material.dart';

class ShopMainPage extends StatefulWidget {
  @override
  State<ShopMainPage> createState() => _ShopMainPageState();
}

class _ShopMainPageState extends State<ShopMainPage> {
  int selectedindex = 0;
  List<Widget> pageWidget = [
    HomeScreen(),
    WebSeriesScreen(),
    MovieScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        child: IndexedStack(
          index: selectedindex,
          children: pageWidget,
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(top: 8),
        decoration: BoxDecoration(
            color: Color(0xff333333),
        ),
      
        child: BottomNavigationBar(
            currentIndex: selectedindex,
            backgroundColor: Color(0xff333333),
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Color(0xffef4054),
            unselectedItemColor: Colors.grey,
            onTap: ((value) {
              setState(() {
                selectedindex = value;
              });
            }),
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.tv_outlined,
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.movie,
                  ),
                  label: ""),
            ]),
      ),
      
      floatingActionButton: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => RecommendScreen(),));
        },
        child: Container(
          margin: EdgeInsets.only(bottom: 20),
          height: 50,
          width: 50,
          decoration: BoxDecoration(color: Color(0xffef4056),shape: BoxShape.circle),
        child: Icon(Icons.store,color: Colors.white,),
        ),
      )
    );
    
  }
}
