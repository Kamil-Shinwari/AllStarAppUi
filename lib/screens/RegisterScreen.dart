import 'package:allstar_app_ui/screens/Otp_Screen.dart';
import 'package:flutter/material.dart';
class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff262626),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:12.0,vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          SizedBox(height: 20,),
          IconButton(onPressed: (){
              Navigator.pop(context);
          }, icon: Icon(Icons.arrow_back,color: Colors.white,)),
          Text("Continue With Phone",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
          SizedBox(height: 20,),
           Container(
            alignment: Alignment.center,
            height: 40,
            decoration: BoxDecoration(border: Border.all(color: Colors.white)),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        "+92",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  )),
              Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 2.0, bottom: 2),
                    child: VerticalDivider(
                      width: 2,
                      color: Colors.white,
                    ),
                  )),
              Expanded(
                  flex: 7,
                  child: Container(
                    
                      height: MediaQuery.of(context).size.height,
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                           hintText: "Enter Phone",
                            hintStyle: TextStyle(
                              fontSize: 20,
                                color: Colors.white.withOpacity(0.3))),
                      )),

                  ),
            ]),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom:20.0,left: 10,right: 10),
            child: Column(children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => OtpScreen(),));
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
                SizedBox(height: 10,),
                Column(children: [
                  Row(
                    children: [
                      Text("By Clicking continue,you agree to our",style: TextStyle(fontSize: 12,color: Colors.grey.shade600),),
                     Text(
                          " Term of Use",
                          style: TextStyle(color: Color(0xffef4056)),
                        ),
                    ],
                  ),
                 Text("and acknowledge that you have read our",
                        style:
                            TextStyle(fontSize: 12, color: Colors.grey.shade600)),
                            Text("Privacy Policy",style: TextStyle(color: Color(0xffef4056)))
                ],)
            ],),
          ),
        ]),
      ),
    );
  }
}