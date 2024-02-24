import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:video_player/video_player.dart';

import 'In_Ar.dart';
import 'In_EN.dart';
import 'Instructions.dart';
import 'Videos.dart';
import 'bluePage.dart';
import 'التعليمات.dart';

class In_Ar extends StatefulWidget {
  const In_Ar({Key? key}) : super(key: key);

  @override
  State<In_Ar> createState() => _AppState();
}

class _AppState extends State<In_Ar> {

  late VideoPlayerController controller;
  late VideoPlayerController controller1;
  @override
  void initState() {
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/121.jpg'), // Set the background image
            fit: BoxFit.cover, // Adjust the image size
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextButton(onPressed: (){
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=>In_en(),
                        ));
                  });
                }, child: Text(
                  'English',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                )),
              ),
              SizedBox(height: 90,),
              Center(
                child: Opacity(
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
                            MaterialPageRoute(builder: (context)=> Ins_Ar(),
                            ),
                          );
                        });
                      },
                      child: Center(
                        child: Text(
                          'التعليمات',
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
              ),
              SizedBox(height: 70,),
              Center(
                child: Opacity(
                  opacity: 0.9,
                  child: Container(
                    height: 100,
                    width: 180,
                    color: Colors.black12,
                    child: GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context)=> Videos(),
                            ),
                          );
                        });
                      },
                      child: Center(
                        child: Text(
                          'الڤيديو',
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
              ),
              SizedBox(height: 70,),
              Center(
                child: Opacity(
                  opacity: 0.9,
                  child: Container(
                    height: 100,
                    width: 260,
                    color: Colors.black12,
                    child: GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context)=> MainPage1(),
                            ),
                          );
                        });
                      },
                      child: Center(
                        child: Text(
                          'الاعدادات',
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
