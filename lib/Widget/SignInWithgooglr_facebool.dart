import '../Common/AppColor.dart';
import 'package:flutter/material.dart';

class SignInwith extends StatelessWidget {
  VoidCallback? onTap;
  String? image;
  String? title;
  SignInwith(
      {super.key, required this.media, this.image, this.title, this.onTap});

  final Size media;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: media.height * 0.08,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(color: AppColors.grey)),
        child: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: media.height * 0.06,
              width: media.width * 0.06,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('$image'))),
            ),
            SizedBox(
              width: media.width * 0.03,
            ),
            Text(
              '$title',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
          ],
        )),
      ),
    );
  }
}
