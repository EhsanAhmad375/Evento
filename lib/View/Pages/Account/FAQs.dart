import 'package:flutter/material.dart';
import '../../../Common/AppColor.dart';
import 'package:event_booking/Widget/AppbarCustomSmall.dart';

class FAQs extends StatelessWidget {
  const FAQs({super.key});

  @override
  Widget build(BuildContext context) {
    final media=MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
          width: media.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.white, AppColors.backPink],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [AppbarCustom(media: media,title: 'FAQs',)],
        ),

      ),
    );
  }
}