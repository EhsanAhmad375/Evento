import 'package:flutter/material.dart';
import 'package:event_booking/Common/AppColor.dart';

class AboutOrganizer extends StatelessWidget {
  const AboutOrganizer({super.key});

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: media.height * 0.025,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          height: media.height * 0.1,
          width: media.width,
          decoration: BoxDecoration(
              color: AppColors.white, borderRadius: BorderRadius.circular(20)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    '10k',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: AppColors.styBlueDark),
                  ),
                  Text(
                    '25k',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: AppColors.styBlueDark),
                  ),
                  Text(
                    '5',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: AppColors.styBlueDark),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Ticket Sold',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    'Followers',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    'Events',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: media.height*0.015,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc eu hendrerit felis. In felis neque, vehicula at ligula a, lobortis malesuada sem. Vestibulum a tristique libero. In nibh felis, venenatis et dolor eget.',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w300
              ),
              ),
        ),
SizedBox(height: media.height*0.015,),
        Image.asset('assets/Map.png')
      ],
    );
  }
}
