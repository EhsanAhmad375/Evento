import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:event_booking/Controller/NearbyController.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';



class TabbarCustom extends StatelessWidget {
  const TabbarCustom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NearbyConroller>(
      init: NearbyConroller(),
      builder: (nearbyController) {
        return Container(
          height: 10.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.grey.shade200
            ),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 2,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  
                  nearbyController.myindex.value=index;
                },
                child: Obx( ()=>
                  Container(
                    // height: 2.h,
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                    width: MediaQuery.of(context).size.width * 0.4,
                    decoration: BoxDecoration(
                      
                      color: nearbyController.myindex.value == index
                          ? Colors.amber
                          : Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(25),
                      
                    ),
                    // child: Center(child: Text("${nearbyController.[index]}",
                    // style: TextStyle(
                    //   fontSize: 23,
                    //   fontWeight: FontWeight.bold
                    // ),
                    // )),
                  ),
                ),
              );
            },
          ),
       
        );
      }
    );
  }
}

