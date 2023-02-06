import 'package:allstar_app_ui/screens/MainScreenWithBottomAppbar.dart';
import 'package:flutter/material.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff262626),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 20,
          ),
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              )),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Enter The 5 digit code sent to",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "+92 301 1234567890",
                style: TextStyle(
                  color: Color(0xffef4056),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    color: Color(0xff353535),
                    shape: BoxShape.circle),
                    child: TextField(
                      style: TextStyle(color: Colors.white,fontSize: 18,),
                      decoration: InputDecoration(border: InputBorder.none,prefix: Padding(padding: EdgeInsets.only(left: 18),)),
                    ),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    color: Color(0xff353535),
                    shape: BoxShape.circle),
                child: TextField(
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      prefix: Padding(
                        padding: EdgeInsets.only(left: 18),
                      )),
                ),
              ),
              SizedBox(
                width: 5,
              ),
               Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    color: Color(0xff353535),
                    shape: BoxShape.circle),
                child: TextField(
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      prefix: Padding(
                        padding: EdgeInsets.only(left: 18),
                      )),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    color: Color(0xff353535),
                    shape: BoxShape.circle),
                child: TextField(
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      prefix: Padding(
                        padding: EdgeInsets.only(left: 18),
                      )),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    color: Color(0xff353535),
                    shape: BoxShape.circle),
                child: TextField(
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      prefix: Padding(
                        padding: EdgeInsets.only(left: 18),
                      )),
                ),
              ),
              SizedBox(
                width: 5,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              "Re-Send Code",
              style: TextStyle(
                  color: Color(0xffef4056),
                  decoration: TextDecoration.underline),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0, left: 10, right: 10),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ShopMainPage(),
                        ));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xffef4056),
                    ),
                    child: Text(
                      "Continue",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
