import 'dart:ui';

import 'package:allstar_app_ui/screens/RegisterScreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff272727),
      body: Stack(
         

          children: [
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 250,
                  decoration: BoxDecoration(
                      color: Color(0xff323232),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Log in to Containue",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen(),));
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Color(0xffef4056),
                              ),
                              child: Text(
                                "Don't Have a Account ?",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                           SizedBox(
                            height: 20,
                          ),
                          Center(child: Text("or",style: TextStyle(color: Colors.white),)),

                           SizedBox(
                            height: 20,
                          ),
                          Container(
                             alignment: Alignment.center,
                            height: 40,
                            decoration: BoxDecoration(
                             
                            
                              border: Border.all(color: Colors.white)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                              Expanded(flex: 1,child: Row(
                                children: [
                                  SizedBox(width: 3,),
                                  Text("+92",style: TextStyle(color: Colors.white),),
                                ],
                              )),
                              Expanded(flex: 1, child:Padding(
                                padding: const EdgeInsets.only(top:2.0,bottom: 2),
                                child: VerticalDivider(width: 2,color: Colors.white,),
                              )),
                              Expanded(flex: 7, child: Container(
                                height: MediaQuery.of(context).size.height,
                                width: double.infinity,
                                alignment: Alignment.center,
                                child: TextField(decoration: InputDecoration(border: InputBorder.none,hintText: "Enter number",hintStyle: TextStyle(color: Colors.white.withOpacity(0.3),fontSize: 20)),))),
                            ]),
                          ),
                        ]),
                  ),
                )),
            Positioned(
              top: MediaQuery.of(context).size.height / 2 - 100,
              left: 50,
              right: 50,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                          image: AssetImage("assets/play.png"),
                        ),
                        shape: BoxShape.circle),
                        child: ClipRRect(
                          child: BackdropFilter(filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
                          child: Container(
                            color: Colors.black.withOpacity(0.1),
                          ),
                          ),
                        ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Light",
                        style: TextStyle(color: Colors.white.withOpacity(0.1), fontSize: 20),
                      ),
                      Text(
                        "STAR",
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.1),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ]),
    );
  }
}
