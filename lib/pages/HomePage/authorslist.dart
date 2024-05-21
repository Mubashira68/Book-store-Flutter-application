import 'package:book_store_app/assets/colors/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AuthorsList extends StatelessWidget {
   AuthorsList({super.key});
List authorList = [
  {
    "image": "lib/assets/images/a1.jpg",
    "name": "J. K. Rowling"

  },
  {
    "image": "lib/assets/images/a2.jpg",
    "name": "Charles Dickens"

  },
  {
    "image": "lib/assets/images/a3.jpg",
    "name": "James Joyce"

  },
  {
    "image": "lib/assets/images/a4.jpg",
    "name": "Jane Austen"

  },
  {
    "image": "lib/assets/images/a5.jpg",
    "name": "Stephen King"

  },
  {
    "image": "lib/assets/images/a6.jpg",
    "name": "William Shakespeare"

  },
  {
    "image": "lib/assets/images/a7.jpg",
    "name": "Fyodor Dostoevsky"

  },
  
];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: authorList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index){
        return Padding(
          padding: const EdgeInsets.only(right:5.0, left: 5),
          child: (
          Column(
            children: [
              Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                    border: Border.all(color: Appcolors.primary, width: 2)
                ),
                child: CircleAvatar(
                  radius: 35,
                  //backgroundColor: Appcolors.primary,
                  backgroundImage: AssetImage(authorList[index]["image"],),
                ),
              ),
              Text(authorList[index]["name"],
              textAlign: TextAlign.center,style: TextStyle(fontSize: 11),)
            ],
          )
          ),
        );

    });
  }
}
