import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';

class SquareAppBar extends StatelessWidget {
  final String? title;
  final Size media;
  final bool backArrow;
  final String? iconImage;

  SquareAppBar({Key? key, required this.media, this.title,this.backArrow=true,this.iconImage}) : super(key: key,);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: media.width, 
      height: media.height*0.5,
      
      child: 
 Stack(
  children: [
     Positioned(
                top: 80,
                child: Row(children: [
                  SizedBox(width: media.width*0.03,),
                  Visibility(
                    visible: backArrow,
                    child: GestureDetector(
                      onTap: (){
                        Get.back();
                      },
                      child: Icon(Icons.arrow_back)),
                  ),
                  SizedBox(width: media.width*0.0,),
                  Text('$title',style: TextStyle(
                    fontSize:20 ,fontWeight: FontWeight.bold
                  ),),
                  ],)),
    Positioned(
      bottom: 1,
      left: 1,
      child: Container(

        width: media.width, 
      height: media.height*0.2,
        decoration: BoxDecoration(
        
        image: DecorationImage(image: AssetImage('assets/Ornament.png'),)
        ),
      
      
      ),
      
    ),
    Positioned(
      left: 10,
      right: 10,
      top: 120,
      child: Container(
        child: Image.asset('$iconImage'),
      ),
    )
    
  ],
)
,
          
    );
  }
}
