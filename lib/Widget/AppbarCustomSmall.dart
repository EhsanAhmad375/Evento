import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
class AppbarCustom extends StatelessWidget {
     String ? title;
     bool backArrow;
     Widget? sufix;
     bool isSufix;
  
   AppbarCustom({
    super.key,
    required this.media,
    this.title,
    this.backArrow=true,
    this.sufix,
    this.isSufix=false
  
  });

  final Size media;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: media.height* 0.15,
      child: Stack(
        children: [
            Positioned(
              top: 80,
              child: Container(child: Image.asset('assets/Ornament.png',height: media.height*0.07,))),
              Positioned(
                top: 90,
                child: Row(children: [
                  SizedBox(width: media.width*0.02,),
                   Visibility(
                    visible: backArrow,
                     child: GestureDetector(
                      onTap: (){
                        Get.back();
                      },
                      child: Icon(Icons.arrow_back)),
                   ),
                  SizedBox(width: media.width*0.02,),
                  Text('$title',style: TextStyle(
                    fontSize:18 ,fontWeight: FontWeight.w500
                  ),),
                  ],)),

                  Positioned(
                    top: 90,
                    right: 20,
                    child: Visibility(
                      visible: isSufix,
                      child: Container(
                        child: sufix,
                      )))

          ],
      ),
    );
  }
}