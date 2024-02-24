import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_blue/flutter_blue.dart';
import 'package:flutter_blue/flutter_blue.dart';
import 'package:get/get.dart';
import 'package:Walk_Corrector/blue.dart';
import 'package:video_player/video_player.dart';

import 'In_Ar.dart';
import 'In_EN.dart';
import 'MainPage.dart';
import 'bluePage.dart';

class App_Home extends StatefulWidget {
  const App_Home({Key? key}) : super(key: key);

  @override
  State<App_Home> createState() => _AppState();
}

class _AppState extends State<App_Home> {

  @override
  void initState() {
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<bluetooth>(
        init: bluetooth(),
        builder: (bluetooth controller)
        {
          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/121.jpg'), // Set the background image
                fit: BoxFit.cover, // Adjust the image size
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Opacity(
                    opacity: 0.9,
                    child: Container(
                      height: 100,
                      width: 220,
                      color: Colors.black12,
                      child: GestureDetector(
                        onTap: ()
                        {
                          setState(() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context)=> In_en(),
                              ),
                            );
                          });
                        },
                        child: Center(
                          child: Text(
                            'English',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 50,
                              fontFamily: 'assets/Frizon.ttf',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Opacity(
                    opacity: 0.9,
                    child: Container(
                      height: 100,
                      width: 150,
                      color: Colors.black12,
                      child: GestureDetector(
                        onTap: ()
                        {
                          setState(() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context)=> In_Ar(),
                              ),
                            );
                          });
                        },
                        child: Center(
                          child: Text(
                            'عربي',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 50,
                              fontFamily: 'assets/Frizon.ttf',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                ],
              ),
            ),
          );
        },)
    );
  }
}
