
import 'package:book_store_app/assets/colors/colors.dart';
import 'package:book_store_app/pages/HomePage/HomeView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainTabView extends StatefulWidget {
  const MainTabView({super.key});

  @override
  State<MainTabView> createState() => _MainTabViewState();
}

GlobalKey<ScaffoldState> sideMenuScaffoldKey = GlobalKey<ScaffoldState>();

class _MainTabViewState extends State<MainTabView>
    with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 4, vsync: this);
  }
  int selectMenu = 0;
  List menuarr = [
    {
      "name": "Home",
      "icon": Icons.home,
    },
    {
      "name": "Our Books",
      "icon": Icons.book,
    },
    {
      "name": "Career",
      "icon": Icons.shop,
    },
    {
      "name": "Sell With us",
      "icon": Icons.sell,
    },
    {
      "name": "Newsletter",
      "icon": Icons.newspaper,
    },
    {
      "name": "Pop-up",
      "icon": Icons.ac_unit_sharp,
    },
    {
      "name": "Account",
      "icon": Icons.person,
    },

  ];
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
        key: sideMenuScaffoldKey,
        endDrawer: Drawer(
          backgroundColor: Colors.transparent,
          //
          // elevation: 0,
          width: media.width * 0.8,
          shadowColor: Colors.transparent,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(media.width * 0.7),
                )),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 64,),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: menuarr.map((obj) {
                      var index = menuarr.indexOf(obj);
                      return  Container(
                        // margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 15),
                        padding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 15),
                        decoration: selectMenu == index
                            ? BoxDecoration(color: Appcolors.primary, boxShadow: [
                          BoxShadow(
                              color: Appcolors.primary,
                              blurRadius: 1,
                              offset: const Offset(0, 3))
                        ])
                            : null,
                      child: GestureDetector(
                      onTap: () {

                      if(index == 1) {

                      // Navigator.push(context, MaterialPageRoute(builder: (context) => const OurBooksView()  ) );
                      sideMenuScaffoldKey.currentState?.closeEndDrawer();

                      }else if (index == 7) {
                      // Navigator.push(
                      // context,
                      // MaterialPageRoute(
                      // builder: (context) =>
                      // const AccountView()));
                      sideMenuScaffoldKey.currentState
                          ?.closeEndDrawer();
                      }

                      //

                      setState(() {
                      selectMenu = index;
                      });
                      },
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(obj["name"].toString(),
                            style: TextStyle(
                                color: selectMenu == index
                                    ? Colors.white
                                    : Appcolors.text,
                                fontSize: 18,
                                fontWeight: FontWeight.w700),
                      ),
                            SizedBox(width: 15),
                            Icon(obj["icon"], size: 35 ,color: selectMenu == index ? Colors.white: Appcolors.primary,)
                          ],
                        ),
                      ));
                    }).toList()
                  ),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          controller: _controller,
          children: [
            const HomeView(),
            Container(),
            Container(),
            Container(),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          color: Appcolors.primary,
          child: TabBar(
            controller: _controller,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white,
            indicatorColor: Colors.transparent,
            padding: EdgeInsets.zero,
            dividerColor: Colors.transparent,
            tabs: [
              Tab(
                icon: Icon(Icons.home_outlined, color: Appcolors.dColor),
                //text: "Home",
              ),
              Tab(
                icon: Icon(
                  Icons.search,
                  color: Appcolors.dColor,
                ),
                // text: "search" ,
              ),
              Tab(
                icon: Icon(
                  Icons.favorite_border,
                  color: Appcolors.dColor,
                ),
                // text: "WishList" ,
              ),
              Tab(
                icon: Icon(
                  Icons.shopping_bag_outlined,
                  color: Appcolors.dColor,
                ),
                // text: "Cart",
              ),
            ],
          ),
        ));
  }
}
