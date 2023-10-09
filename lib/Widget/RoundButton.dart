import 'package:flutter/material.dart';
import 'package:event_booking/Common/AppColor.dart';

class RoundButtonCustom extends StatelessWidget {
  String? title;
  VoidCallback? onTap;
  bool isVisible;
   RoundButtonCustom({super.key,this.title,this.onTap,this.isVisible=false});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
                color: AppColors.darkBlue,
                borderRadius: BorderRadius.circular(30),
        ),
        child: Center(child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           Container(),
            Text('${title}',style: TextStyle(color: AppColors.white,fontSize: 20,),),
            Visibility(
              visible:isVisible,
              child: Padding(
                padding: const EdgeInsets.only(right: 7.5),
                child: CircleAvatar(
                  backgroundColor: AppColors.styBlue,
                  child: Icon(Icons.arrow_forward_sharp,color: AppColors.darkBlue,),
                ),
              ),
            ),
            
          ],
        )),
    
      ),
    );
  }
}