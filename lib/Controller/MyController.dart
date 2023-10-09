import 'package:get/get.dart';

class MyController extends GetxController {
  RxList<String> onBoardingList = <String>[
    'assets/onboarding1.png',
    'assets/onboarding2.png',
    'assets/onboarding3.png',
    'assets/onboarding4.png',
    'assets/onboarding5.png',
    'assets/onboarding6.png',
  ].obs;
  RxList<String> onboardingName = <String>[
    "Login",
    "Sign Up",
  ].obs;
  RxInt myIndex = 0.obs;
  RxInt select=0.obs;

  RxList<String> ViaTitle=<String>[
    'Via SMS',
    'Via Email',
  ].obs;
  RxList<String> ViaSub=<String>[
    'code will be sent to ******* **375',
    'code will be sent to **@gmail.com',
    
  ].obs;


  RxBool Signinchekbox = false.obs;

  RxString selectedOption = ''.obs;
  void updateSelectedOption(String option) {
    selectedOption.value = option;
  }
}
