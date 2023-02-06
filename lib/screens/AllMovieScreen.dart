import 'package:allstar_app_ui/widgets/GridViewMovieContainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AllMovieScreen extends StatelessWidget {
  const AllMovieScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xff333333),
      body:
       SingleChildScrollView(

         child: Column(
           children: [
           
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [
                IconButton(onPressed: (){
                  Navigator.pop(context);
                }, icon: Icon(Icons.arrow_back_ios,color: Colors.white,)),
                SizedBox(width: 15,),
                Text("All Movies",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
              Spacer(),
              Icon(Icons.search,color: Colors.white,size: 30,)
              ],),
            ),
             GridView(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    children: [
                      MovieContainerGridView(url: "assets/marvel/avanger.jpg"),
                       MovieContainerGridView(url: "assets/marvel/hulk.jpg"),
                       MovieContainerGridView(url: "assets/marvel/ironman.jpg"),
                       MovieContainerGridView(url: "assets/marvel/ironman2.jpg"),
                       MovieContainerGridView(url: "assets/marvel/captan.jpg"),
                        MovieContainerGridView(url: "assets/marvel/thor.jpg"),
                       MovieContainerGridView(url: "assets/marvel/AbugLisfe.jpg"),
                      MovieContainerGridView(url: "assets/marvel/dumbo.jpg"),
                       MovieContainerGridView(url: "assets/she.jpg"),
                       MovieContainerGridView(url: "assets/run.jpg"),
                       MovieContainerGridView(url: "assets/snow.jpg"),
                       MovieContainerGridView(url: "assets/russian.jpg"),
                       MovieContainerGridView(url: "assets/punisher.jpg"),
                       MovieContainerGridView(url: "assets/rise.jpg"),
                       MovieContainerGridView(url: "assets/Queen.jpg"), 
                        MovieContainerGridView(url: "assets/marvel/avanger.jpg"),
                  MovieContainerGridView(url: "assets/marvel/hulk.jpg"),
                  MovieContainerGridView(url: "assets/marvel/ironman.jpg"),
                  MovieContainerGridView(url: "assets/marvel/ironman2.jpg"),
                  MovieContainerGridView(url: "assets/marvel/captan.jpg"),
                  MovieContainerGridView(url: "assets/marvel/thor.jpg"),
                  MovieContainerGridView(url: "assets/marvel/AbugLisfe.jpg"),
                  MovieContainerGridView(url: "assets/marvel/dumbo.jpg"),
                  MovieContainerGridView(url: "assets/she.jpg"),
                  MovieContainerGridView(url: "assets/run.jpg"),
                  MovieContainerGridView(url: "assets/snow.jpg"),
                  MovieContainerGridView(url: "assets/russian.jpg"),
                  MovieContainerGridView(url: "assets/punisher.jpg"),
                  MovieContainerGridView(url: "assets/rise.jpg"),
                  MovieContainerGridView(url: "assets/Queen.jpg"),     
                    ],
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 2)),
           ],
         ),
       ),
    );
  }
}