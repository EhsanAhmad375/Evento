import 'package:flutter/material.dart';
import 'package:event_booking/Utility/RouteName.dart';
import 'package:event_booking/View/Pages/Home/Home.dart';
import 'package:event_booking/Widget/persistantNav.dart';
import 'package:event_booking/Splash/splash_screen.dart';
import 'package:event_booking/View/Pages/Account/FAQs.dart';
import 'package:event_booking/View/Pages/Account/About.dart';
import 'package:event_booking/View/Pages/choose_location.dart';
import 'package:event_booking/View/Pages/Account/DarkMode.dart';
import 'package:event_booking/View/Pages/Account/Language.dart';
import 'package:event_booking/View/Pages/Ticket/Direction.dart';
import 'package:event_booking/View/Pages/Home/NearbyEvent.dart';
import 'package:event_booking/View/Pages/Home/EventDetail.dart';
import 'package:event_booking/View/Pages/OnboardingScreen.dart';
import 'package:event_booking/View/Pages/CheckOut/checkOut.dart';
import 'package:event_booking/View/Pages/Home/LocNeabyEvent.dart';
import '../View/Pages/User/login_signup/Login_signup_screen.dart';
import 'package:event_booking/View/Pages/Account/EditProfile.dart';
import 'package:event_booking/View/Pages/Ticket/TicketDetail.dart';
import 'package:event_booking/View/Pages/Search/SearchResult.dart';
import 'package:event_booking/View/Pages/CheckOut/TicketType.dart';
import 'package:event_booking/View/Pages/CheckOut/SelectTime.dart';
import 'package:event_booking/View/Pages/Account/Notification.dart';
import 'package:event_booking/View/Pages/Home/ContetOrganizer.dart';
import 'package:event_booking/View/Pages/Account/PaymentMethod.dart';
import 'package:event_booking/View/Pages/CheckOut/OrderComplete.dart';
import 'package:event_booking/View/Pages/CheckOut/paymentMethod.dart';
import 'package:event_booking/View/Pages/User/login_signup/Login.dart';
import 'package:event_booking/View/Pages/Account/NewPaymentMethod.dart';
import 'package:event_booking/View/Pages/User/login_signup/signup.dart';
import 'package:event_booking/View/Pages/User/ResetPassword/Success.dart';
import 'package:event_booking/View/Pages/Search/SearchResult_mapView.dart';
import 'package:event_booking/View/Pages/Organizers/organizer_profile.dart';
import 'package:event_booking/View/Pages/Personalization/FaveroitEvent.dart';
import 'package:event_booking/View/Pages/User/ResetPassword/Enter_phone.dart';
import 'package:event_booking/View/Pages/User/ResetPassword/Enter_Email.dart';
import 'package:event_booking/View/Pages/User/ResetPassword/choos_method.dart';
import 'package:event_booking/View/Pages/Personalization/followOrganizers.dart';
import 'package:event_booking/View/Pages/User/ResetPassword/verificatio_otp.dart';
import 'package:event_booking/View/Pages/User/ResetPassword/Create_newPassword.dart';
import 'package:event_booking/View/Pages/Personalization/LoadingPersonalization.dart';


class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.splashScreen:
        return MaterialPageRoute(builder: (context) => SplashScreen());
      case RouteName.chooseLocation:
        return MaterialPageRoute(builder: (context) => ChoosLocation());
      case RouteName.onBoardingScreen:
        return MaterialPageRoute(builder: (context) => OnBoardingScreen());
      case RouteName.loginSignupScreen:
        return MaterialPageRoute(builder: (context) => LoginSignupScreens());
      case RouteName.loginScreen:
        return MaterialPageRoute(builder: (context) => LoginScreen());
      case RouteName.signinScreen:
        return MaterialPageRoute(builder: (context) => SignupScreen());
      case RouteName.chooseMethod:
        return MaterialPageRoute(builder: (context) => ChooseMethod());
      case RouteName.enteremail:
        return MaterialPageRoute(builder: (context) => EnterEmail());
      case RouteName.enterPhone:
        return MaterialPageRoute(builder: (context) => EnterPhone());
      case RouteName.verificationOtp:
        return MaterialPageRoute(builder: (context) => VarificationOtp());
      case RouteName.createNewPassword:
        return MaterialPageRoute(builder: (context) => CreateNewPassword());
      case RouteName.sucess:
        return MaterialPageRoute(builder: (context) => Sucess());
      case RouteName.favriteEvent:
        return MaterialPageRoute(builder: (context) => FavoriteEvent());
      case RouteName.followOrganizers:
        return MaterialPageRoute(builder: (context) => FollowOrganizers());
      case RouteName.loadingPersonlinzation:
        return MaterialPageRoute(builder: (context) => LoadingPersonlization());
      case RouteName.persistance_bottom_Nav_bar:
        return MaterialPageRoute(builder: (context) => MyPersistent());
      case RouteName.home:
        return MaterialPageRoute(builder: (context) => Home());
      case RouteName.eventDetail:
        return MaterialPageRoute(builder: (context) => EventDetails(data: settings.arguments as Map,));
      case RouteName.nearbyEvent:
        return MaterialPageRoute(builder: (context) => NearbyEvent());
      case RouteName.locationNeabyEvent:
        return MaterialPageRoute(builder: (context) => LocNeabyEvent(data:settings.arguments as Map,));
      case RouteName.contectOrganizer:
        return MaterialPageRoute(builder: (context) => ContectOrganizer());
      case RouteName.selectTime:
        return MaterialPageRoute(builder: (context) => SelectTime(data:settings.arguments as Map,));
      case RouteName.TicketType:
        return MaterialPageRoute(builder: (context) => TicketType(data:settings.arguments as Map,));
      case RouteName.checkOut:
        return MaterialPageRoute(builder: (context) => CheckOut(data:settings.arguments as Map,));
      case RouteName.paymentMethod:
        return MaterialPageRoute(builder: (context) => PaymentMethod());
      case RouteName.orderComplete:
        return MaterialPageRoute(builder: (context) => OrderComplete());
      case RouteName.searchResult:
        return MaterialPageRoute(builder: (context) => SearchResult(data:settings.arguments as Map,));
      case RouteName.searchResultMapView:
        return MaterialPageRoute(builder: (context) => SearchResult_MapView(data:settings.arguments as Map,));
      case RouteName.ticketDetail:
        return MaterialPageRoute(builder: (context) => TicketDetail(data:settings.arguments as Map,));
      case RouteName.directions:
        return MaterialPageRoute(builder: (context) => Direction());
      case RouteName.editProfile:
        return MaterialPageRoute(builder: (context) => EditProfile());
      case RouteName.language:
        return MaterialPageRoute(builder: (context) => Language());
      case RouteName.notification:
        return MaterialPageRoute(builder: (context) => MyNotifications());
      case RouteName.darkMode:
        return MaterialPageRoute(builder: (context) => DarkMode());
      case RouteName.payment_methodAccount:
        return MaterialPageRoute(builder: (context) => paymentMethodAccount());
      case RouteName.faqs:
        return MaterialPageRoute(builder: (context) => FAQs());
      case RouteName.about:
        return MaterialPageRoute(builder: (context) => About());
      case RouteName.newPaymentMethod:
        return MaterialPageRoute(builder: (context) => NewPaymentMethod());
      case RouteName.organizer_profile:
        return MaterialPageRoute(builder: (context) => OrganizerProfile());
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text('No Route Found'),
            ),
          ),
        );
    }
  }
}
