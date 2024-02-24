import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:Walk_Corrector/In_Ar.dart';
import 'package:Walk_Corrector/In_EN.dart';
import 'package:Walk_Corrector/التعليمات.dart';
import 'package:video_player/video_player.dart';


class Ins_Ar extends StatefulWidget {
  const Ins_Ar({Key? key}) : super(key: key);

  @override
  State<Ins_Ar> createState() => _AppState();
}

class _AppState extends State<Ins_Ar> {

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    color: Colors.white12,
                    child: TextButton(onPressed: (){
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context)=> In_en(),
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
                          '''تعليمات الخطوة السليمة:-
    1- ارتداء الحذاء المناسبة.
    2- ابدأ خطوتك بكعب القدم.
    3- تأكد من أنك في الوضع الطبيعي للجسم. 
    4- يجب أن يكون رأسك وأكتافك وظهرك وحوضك على نفس الخط.
    5- أرجحة ذراعيك اثناء المشي.
    6- يجب أن يكون ظهرك مستقيماً.
    7- يجب أن تكون قدماك متجهتين للأمام، لا للخارج ولا للداخل.


النواتج السلبية الناتجة من بدء الخطوة بطريقة غير صحيحة تتمثل في :
* استهلاك طاقة اكبر عن الوضع الطبيعى مع بداية الخطوة بالكعب اولا.
* فبالمقارنة مع الذين يمشون بكعب القدم اولا، يستهلك الذين يتقدمون اولا باصابع القدم هذه في البداية ٨٣ في المئة من الطاقة.

* ويؤدي ذلك  إلى حدوث مضاعفات تتمثل في :
-اختلال التوازن العضلى 

 -شد عضلى مؤلم متكرر 
 - تقليل المدي الحركى للمفاصل المشاركة في عملية الحركة 

-اختلال ميكانيكا الجسم الطبيعية مما يأثر على أداء بعض الانشطة مثل تمثيل القرفصاء 

-زيادة التعرض لخطر السقوط والاصابات الناتجة عنه 

-عدم القدرة على الوقوف مع وضع الكعب على الارض 

-ظهور ألم في الكاحل والساق والركبتين

-ظهور بعض التشوهات في القدم مع استمرار المشي بطريقة غير صحيحة''',
                          textDirection: TextDirection.rtl,
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
