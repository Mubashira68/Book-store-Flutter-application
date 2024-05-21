import 'package:book_store_app/assets/colors/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
        }, icon: Icon(Icons.arrow_back_ios, color: Appcolors.primary,),

        ),
      ),
    );
  }
}
