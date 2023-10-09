import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:event_booking/Utility/RouteName.dart';
import 'package:event_booking/Model/AccountModel.dart';

class AccountController extends GetxController {
  RxInt myIndex=0.obs;
  RxList<AccountModel> accountList = <AccountModel>[
    AccountModel(
        leadingIcons: Icons.person,
        title: 'Edit Profile',
        trailingIcons: Icons.arrow_forward_ios_sharp,
        clssss: RouteName.editProfile),
    AccountModel(
        leadingIcons: Icons.language_outlined,
        title: 'Language',
        trailingIcons: Icons.arrow_forward_ios_sharp,
        clssss: RouteName.language),
    AccountModel(
        leadingIcons: Icons.notification_important,
        title: 'Notification',
        trailingIcons: Icons.arrow_forward_ios_sharp,
        clssss: RouteName.notification),
    AccountModel(
        leadingIcons: Icons.mode_night_rounded,
        title: 'DarkMode',
        trailingIcons: Icons.change_circle,
        clssss: RouteName.darkMode),
    AccountModel(
        leadingIcons: Icons.payment,
        title: 'Payment Method',
        trailingIcons: Icons.arrow_forward_ios_sharp,
        clssss: RouteName.payment_methodAccount),
    AccountModel(
        leadingIcons: Icons.messenger_outline,
        title: 'FAQs',
        trailingIcons: Icons.arrow_forward_ios_sharp,
        clssss: RouteName.faqs),
    AccountModel(
        leadingIcons: Icons.error,
        title: 'About',
        trailingIcons: Icons.arrow_forward_ios_sharp,
        clssss: RouteName.about),
  ].obs;

  RxList<LanguageModel> languageList = <LanguageModel>[
    LanguageModel(countryName: 'UK English', image: 'assets/flag/uk.png'),
    LanguageModel(countryName: 'US English', image: 'assets/flag/us.png'),
    LanguageModel(countryName: 'Japanese', image: 'assets/flag/japan.png'),
    LanguageModel(countryName: 'German', image: 'assets/flag/german.png'),
    LanguageModel(countryName: 'Spanish', image: 'assets/flag/spain.png'),
    LanguageModel(countryName: 'Francias', image: 'assets/flag/france.png'),
    LanguageModel(countryName: 'Greek', image: 'assets/flag/greek.png'),
    LanguageModel(countryName: 'Italian', image: 'assets/flag/italian.png'),
    LanguageModel(countryName: 'Dutch', image: 'assets/flag/duch.png'),
    LanguageModel(countryName: 'Arabic', image: 'assets/flag/arabic.png'),
  ].obs;

  RxList<PaymentMethodModel> paymentMethodList=<PaymentMethodModel>[
    PaymentMethodModel(title: 'HSBC Bank',subtitle: '**** ****5371',image:'assets/flag/hsbc.png' ),
    PaymentMethodModel(title: 'Master Card',subtitle: '**** ****5371',image:'assets/flag/master.png' ),
    PaymentMethodModel(title: 'Paypal',subtitle: '**** ****5371',image:'assets/flag/paypal.png' ),
  ].obs;
  RxList<PaymentMethodModel> NewMethodList=<PaymentMethodModel>[
    PaymentMethodModel(title: 'NewCard',subtitle: '**** ****5371',image:'assets/flag/hsbc.png' ),
    PaymentMethodModel(title: 'Google pay',subtitle: '**** ****5371',image:'assets/google.png' ),
    PaymentMethodModel(title: 'Apple pay',subtitle: '**** ****5371',image:'assets/flag/apple.png' ),
    PaymentMethodModel(title: 'Paypay',subtitle: '**** ****5371',image:'assets/flag/paypal.png' ),
  ].obs;







  
  
}
