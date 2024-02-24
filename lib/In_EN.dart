import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:video_player/video_player.dart';

import 'In_Ar.dart';
import 'Instructions.dart';
import 'MainPage.dart';
import 'Videos.dart';

class In_en extends StatefulWidget {
  const In_en({Key? key}) : super(key: key);

  @override
  State<In_en> createState() => _AppState();
}

class _AppState extends State<In_en> {

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
                        MaterialPageRoute(builder: (context)=>In_Ar(),
                        ));
                  });
                }, child: Text(
                  'عربي',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                )),
              ),
              SizedBox(height: 150,),
              Center(
                child: Opacity(
                  opacity: 0.9,
                  child: Container(
                    height: 100,
                    width: 280,
                    color: Colors.black12,
                    child: GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context)=> Instructions(),
                            ),
                          );
                        });
                      },
                      child: Center(
                        child: Text(
                          'Instructions',
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
                          'Videos',
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
                            MaterialPageRoute(builder: (context)=> MainPage(),
                            ),
                          );
                        });
                      },
                      child: Center(
                        child: Text(
                          'Settings',
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
