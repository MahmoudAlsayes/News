import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../models/model_bottom_sheet.dart';

class SplashScreen extends StatefulWidget {
  static const String RouteName ="splash";
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
            image: AssetImage("assets/images/pattern.png"), fit: BoxFit.fill),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          actions: [

          ],
          backgroundColor: Colors.green,
          shape: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
          title:  Text("News").tr(),
        ),
        body:Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text( "language",style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold
              ) ,).tr(),
              SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () {
                  chooseLanguage();
                  setState(() {

                  });

                },
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration:BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Color(0xff39A552),width: 2)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text("English",textAlign: TextAlign.left,), Spacer(),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: Color(0xff39A552),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  chooseLanguage ()
  {
    showModalBottomSheet(context: context,
      shape: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.only(topLeft:Radius.circular(12) ,topRight: Radius.circular(12))
      ),

      builder: (context) {
      return ModelBottomSheet();

    },);
  }
}
