import 'package:book_store_app/assets/colors/colors.dart';
import 'package:book_store_app/pages/HomePage/Genres.dart';
import 'package:book_store_app/pages/HomePage/MainTabView.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'BestSeller.dart';
import 'authorslist.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List topPicks = [
    {
      "name": "The disappearance of emala zola",
      "author": "Micheal Rosan",
      "img": "lib/assets/images/1.jpg",
    },
    {
      "name": "FatherHood",
      "author": "Micheal Rosan",
      "img": "lib/assets/images/2.jpg",
    },
    {
      "name": "The time travler",
      "author": "Micheal Rosan",
      "img": "lib/assets/images/3.jpg",
    },
    {
      "name": "Epic Shit",
      "author": "Micheal Rosan",
      "img": "lib/assets/images/13.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Align(
                  child: Transform.scale(
                    scale: 1.5,
                    origin: Offset(0, media.width * 0.5),
                    child: Container(
                      width: media.width,
                      height: media.width * 0.9,
                      decoration: BoxDecoration(
                        color: Appcolors.primary,
                        borderRadius: BorderRadius.circular(media.width * 0.5),
                      ),
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  //mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    AppBar(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      title: Row(
                        children: [
                          Text(
                            "Our Top Picks",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 24),
                          ),
                        ],
                      ),
                      leading: Container(),
                      leadingWidth: 1,
                      actions: [
                        IconButton(
                          onPressed: () {
                            sideMenuScaffoldKey.currentState?.openEndDrawer();

                          },
                          icon: Icon(Icons.menu),
                          color: Colors.white,
                        ),
                      ],
                    ),
                    Container(
                      width: media.width,
                      height: media.width * 0.83,
                      //color: Colors.red,
                      child: CarouselSlider.builder(
                        itemCount: topPicks.length,
                        itemBuilder: (BuildContext context, int itemIndex,
                            int pageViewIndex) {
                          return Container(
                            width: media.width * 0.3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15),
                                      boxShadow: const [
                                        BoxShadow(
                                            color: Colors.black38,
                                            offset: Offset(0, 2),
                                            blurRadius: 5),
                                      ]),
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Image.asset(
                                        topPicks[itemIndex]["img"],
                                        fit: BoxFit.cover,
                                        height: media.width * 0.50,
                                        width: media.width * 0.52,
                                      )),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  topPicks[itemIndex]["name"],
                                  textAlign: TextAlign.center,
                                  maxLines: 3,
                                  style: TextStyle(
                                      color: Appcolors.text,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 13),
                                ),
                                Text(
                                  topPicks[itemIndex]["author"],
                                  maxLines: 1,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Appcolors.subTitle, fontSize: 11),
                                ),
                              ],
                            ),
                          );
                        },
                        options: CarouselOptions(
                            autoPlay: true,
                            aspectRatio: 1,
                            enlargeCenterPage: true,
                            viewportFraction: 0.45,
                            enlargeFactor: 0.4,
                            enlargeStrategy: CenterPageEnlargeStrategy.zoom),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text("Most Famout Authors",
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                      fontSize: 20)),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                // color: Colors.red,
                height: 140,
                child: AuthorsList()),
            //SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text("Best Seller",
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                      fontSize: 20)),
            ),
            SizedBox(
              height: 10,
            ),

            Container(height: 320, child: BestSllerPage()),
            SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text("Genres",
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                      fontSize: 20)),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                height: 230, child: Genres()),
            SizedBox(height: 10),

            Container(
              
            )
          ],
        ),
      ),
    );
  }
}
