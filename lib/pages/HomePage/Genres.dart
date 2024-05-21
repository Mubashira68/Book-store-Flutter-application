import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Genres extends StatelessWidget {
   Genres({super.key});
  var genre = [
    {
      "img": "lib/assets/images/g1.png",
      "gen": "Romantic Novels"

    },
    {
      "img": "lib/assets/images/g1.png",
      "gen": "Graphic Novels"
    },
    {
      "img": "lib/assets/images/g1.png",
      "gen": "Science Fiction"
    },
  ];
  var bgcolor = [
    //Colors.deepOrange,
    Color(0xffC65135),
    Color(0xff1C4A7E),
    Color(0xfff1d404)
    //Color(0xff0c105b),
   // Colors.indigo,
   // Colors.yellow
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
scrollDirection: Axis.horizontal,
        itemCount: genre.length,
        itemBuilder: (context, index){
          return
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.only(left: 15, right: 15, top: 10, ),
                  height: 100,
                  width: 250,
                  decoration: BoxDecoration(
                    color: bgcolor[index],
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: Column(
                    children: [
                      Image(image: AssetImage(genre[index]["img"]!)),
                      SizedBox(height: 5,),
                      Text(genre[index]["gen"]!, style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold ),)
                    ],
                  ),
                ),
              );

    });
  }
}
