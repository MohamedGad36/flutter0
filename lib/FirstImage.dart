import 'package:flutter/material.dart';

import 'StartPage.dart';

class Start extends StatefulWidget {
  const Start({Key? key}) : super(key: key);

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/121s.jpg'), // Set the background image
            fit: BoxFit.cover, // Adjust the image size
          ),
        ),
        child: GestureDetector(
          onTap: ()
          {
            setState(() {
              Navigator.push(
              context,
            MaterialPageRoute(builder: (context) => App_Home())
            );
            });
          },
        ),
      ),
    );
  }
}
