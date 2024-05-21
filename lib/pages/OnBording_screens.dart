import 'package:book_store_app/assets/colors/colors.dart';
import 'package:book_store_app/pages/Welcome_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

PageController _controller = PageController();
int page = 0;


 var onbordingarr = [
   {
     "title": "Discounted\nSecondhand Books",
     "sub_title": "Used and near new secondhand books at great prices.",
     "img": "lib/assets/images/on_1.png"
   },
   {
     "title": "20 Book Grocers\nNationally",
     "sub_title": "We've successfully opened 20 stores across Australia.",
     "img": "lib/assets/images/on_2.png"
   },
   {
     "title": "Sell or Recycle Your Old\nBooks With Us",
     "sub_title":
     "If you're looking to downsize, sell or recycle old books, the Book Grocer can help.",
     "img": "lib/assets/images/on_3.png"
   }
 ];
class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(

       controller: _controller,
         itemCount: 3,
         onPageChanged: (index){
         setState(() {
           page = index;

         });

         },itemBuilder: (_, index){
         return Container(
           padding: EdgeInsets.only(left: 15, top: 60, right: 15),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [

               Text(onbordingarr[index]["title"]!, textAlign: TextAlign.center,
                   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Appcolors.primary, )),
               SizedBox(height: 15,),

               Text(onbordingarr[index]["sub_title"]!,  textAlign:TextAlign.center, style: TextStyle(
                 color: Appcolors.primary,
               ), ),
               //SizedBox(height: MediaQuery.of(context).size.height * 0.60,),
               SizedBox(height: 30,),
               Image(image:
               AssetImage(onbordingarr[index]["img"]!,
                   ),
                  width: MediaQuery.of(context).size.width * 0.8,
                 height: MediaQuery.of(context).size.height * 0.5
                 ,
               fit: BoxFit.fitWidth,),

               SmoothPageIndicator(
                     controller: _controller,
                     count: 4,
                     effect: SwapEffect(
                       activeDotColor: Appcolors.primary,
                       dotColor: Appcolors.primaryLight,
                       dotWidth: 10, // Set the width of the dots
                       dotHeight: 10,
                     ),
                 onDotClicked: (index){

               },),
               if (index == onbordingarr.length - 1)
                 Positioned(
                   bottom: 20,
                     right: 20,
                   child: TextButton(
                     onPressed: () {
                       Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => WelcomePage()));
                     },
                     child: Text(
                       'Get Started',
                       style: TextStyle(color: Colors.white),
                     ),
                     style: ButtonStyle(
                       backgroundColor: MaterialStateProperty.all<Color>(Appcolors.primary),
                     ),
                   ),
                 ),
             ],
           ),


         )  ;
         },
                )  );
  }
}
