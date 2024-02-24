import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:video_player/video_player.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _AppState();
}

class _AppState extends State<Notifications> {

  late VideoPlayerController controller2;
  bool s = true;
  bool m = true;
  bool x = true;
  @override
  void initState() {
    super.initState();

    controller2 = VideoPlayerController.asset('assets/V3.mp4')..initialize().then((value){
      setState(() {});
    });
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
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 100,),
                Column(
                  children: [
                    Center(
                      child: controller2.value.isInitialized?
                      AspectRatio(child: VideoPlayer(controller2), aspectRatio: controller2.value.aspectRatio,):Container(
                        child: Text('loading..'),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // IconButton(
                        //   icon: Icon(
                        //     Icons.play_arrow_rounded,
                        //     color: Colors.white,
                        //   ),
                        //   onPressed: (){
                        //     controller1.play();
                        //   },
                        // ),
                        IconButton(
                          icon: Text(
                            '<<',
                            style:TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          onPressed: () async
                          {
                            Duration? d = await controller2.position;
                            var value = d! - Duration(seconds: 1);
                            controller2.seekTo(value);
                          },
                        ),
                        IconButton(
                          icon: Icon(
                            x? Icons.play_arrow_rounded : Icons.pause,
                            color: Colors.white,
                          ),
                          onPressed: (){
                            x? controller2.play(): controller2.pause();
                            setState(() {
                              x = !x;
                            });
                          },
                        ),
                        IconButton(
                          icon: Text(
                            '>>',
                            style:TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          onPressed: () async
                          {
                            Duration? d = await controller2.position;
                            var value = d! + Duration(seconds: 3);
                            controller2.seekTo(value);
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
