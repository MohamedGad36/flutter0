import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:Walk_Corrector/In_Ar.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';


class Instructions extends StatefulWidget {
  const Instructions({Key? key}) : super(key: key);

  @override
  State<Instructions> createState() => _AppState();
}

class _AppState extends State<Instructions> {

  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/121b.jpg'), // Set the background image
            fit: BoxFit.cover, // Adjust the image size
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    color: Colors.white12,
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
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      left: 20,
                      right: 20,
                    ),
                    child: Column(
                      children: [
                        Text(
                          '''Instructions for normal step :-
1- wear appropriate shoes
2- start your step with your heel 
3- be sure that your posture is in normal alignment 
4- your head , shoulder , back and pelvis should be at the same line .
5- Relaxed arm swing.
6- Your back should be straight.
7-Your foot should face forward not outward neither inward.


The negative consequences of starting the step incorrectly are :
* the consumption of more energy than the normal situation when starting the step with the heel first.
* Compared with those who walk heel-first, those who walk first with those toes initially expend 83 percent of the energy.

* This leads to complications that include:
 -Muscle imbalance

  -Repeated painful muscle spasms 
 - reduced range of motion of the joints involved in the movement process

 -Disruption of the body’s natural mechanics, which affects the performance of some activities such as squats

 -Increased exposure to the risk of falls and resulting injuries

 -Inability to stand with heels on the ground

 -Pain appears in the ankle, leg and knees

 -Some deformities appear in the foot as walking continues incorrectly''',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 100,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
