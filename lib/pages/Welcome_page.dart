import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../assets/colors/colors.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("lib/assets/images/welcome_bg.png"), fit: BoxFit.fill)
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 90),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Books For \n Every Taste.", textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35, color: Appcolors.primary, )),
              SizedBox(height: 90,),

              ElevatedButton(onPressed: (){

              }, child: Text("Sign Up", style: TextStyle(
                color: Appcolors.dColor
              ),),
              style: ElevatedButton.styleFrom(
                backgroundColor: Appcolors.button1,
                padding: EdgeInsets.symmetric(horizontal: 120, vertical: 15),

              ),),
SizedBox(height: 20 ,),

              ElevatedButton(onPressed: (){

              }, child: Text("Sign In", style: TextStyle(
                  color: Appcolors.dColor
              ),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Appcolors.button1,
                  padding: EdgeInsets.symmetric(horizontal: 120, vertical: 15),

                ),)
            ],
          ),
        ),
      ),
    );
  }
}
