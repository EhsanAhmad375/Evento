import 'package:flutter/material.dart';
import 'package:event_booking/Common/AppColor.dart';
import '../../../../Widget/SignInWithgooglr_facebool.dart';
import '../../../../Widget/Login_Signup_widget_listviewbuilder.dart';
class LoginSignupScreens extends StatelessWidget {
  const LoginSignupScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.white, Color(0xffFFD7D5)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Image.asset('assets/Ornament.png'),
                    ),
                    Positioned(
                      top: 200,
                      right: 10,
                      child: Image.asset('assets/999.png'),
                    ),
                    Positioned(
                      top: 150,
                      left: 30,
                      child: Image.asset('assets/kuri.png'),
                    ),
                    Positioned(
                      top: 400,
                      right: 70,
                      child: Image.asset('assets/Logo3.png'),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: media.height * 0.4,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            children: [
                              SizedBox(
                                height: media.height * 0.06,
                              ),
                              SignInwith(
                                media: media,
                                image: 'assets/google.png',
                                title: 'Continue with Google',
                              ),
                              SizedBox(
                                height: media.height * 0.02,
                              ),
                              SignInwith(
                                media: media,
                                image: 'assets/facebook.png',
                                title: 'Continue with Facebook',
                              ),
                              SizedBox(
                                height: media.height * 0.02,
                              ),
                              Container(
                                height: media.height * 0.07,
                                child: LoginSignupCustomWigget(media: media),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
