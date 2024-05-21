import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../assets/colors/colors.dart';

class BestSllerPage extends StatelessWidget {
   BestSllerPage({super.key});

  List BestSeller = [

    {
      "name": "Day Four",
      "author": "Sarah Lotz",
      "img": "lib/assets/images/11.jpg",
      "stars": 4.5
    },
    {
      "name": "Door to Door",
      "author": "Edward Humes",
      "img": "lib/assets/images/10.jpg",
      "stars": 3.5
    },
    {
      "name": "2020 World of war",
      "author": "Paul Cornish & Kingsley DonalDon",
      "img": "lib/assets/images/7.jpg",
      "stars": 4.5
    },

    {
      "name": "The disappearance of emala zola",
      "author": "Micheal Rosan",
      "img": "lib/assets/images/1.jpg",
      "stars": 4.0
    },
    {
      "name": "FatherHood",
      "author": "Micheal Rosan",
      "img": "lib/assets/images/2.jpg",
      "stars": 5.0
    },
    {
      "name": "The time travler",
      "author": "Micheal Rosan",
      "img": "lib/assets/images/3.jpg",
      "stars": 3.8
    },
    {
      "name": "The Zoo",
      "author": "John Banville",
      "img": "lib/assets/images/6.jpg",
      "stars": 2.57
    },

    {
      "name": "Tattle Tale",
      "author": "Sarah Naughton",
      "img": "lib/assets/images/4.jpg",
      "stars": 5.0
    },
    {
      "name": "In a land of paper gods",
      "author": "Rabecca Mackenzai",
      "img": "lib/assets/images/13.jpg",
      "stars": 4.0
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
        itemCount: BestSeller.length,
        itemBuilder: (context, index){
          var stars = BestSeller[index]["stars"] as double;           return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200,
              width: 150,
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10), // Adjust the curve radius as needed
                    child: Container(
                      height: 230,
                      width: 170,
                      child: Image.asset(
                        BestSeller[index]["img"]!,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(BestSeller[index]["name"],
                  maxLines: 1, textAlign: TextAlign.center,),
                  Text(BestSeller[index]["author"],
                    maxLines: 1, textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black45),),

                  RatingBar.builder(
                    initialRating: stars ?? 0,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemSize: 20,
                      onRatingUpdate: (rating){

                      },
                    itemBuilder: (BuildContext context, int index) {
                        return Icon(Icons.star, color: Colors.orange, );
                    },)

                ],
              ),
            ),
          );
        });
  }
}
