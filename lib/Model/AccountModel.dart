import 'package:flutter/material.dart';
import 'package:event_booking/View/Pages/Account/Language.dart';
import 'package:event_booking/View/Pages/CheckOut/paymentMethod.dart';
// ignore_for_file: public_member_api_docs, sort_constructors_first


class AccountModel {
  IconData? leadingIcons;
  IconData? trailingIcons;
  String? trailingText;
  String? title;

  var clssss;
  AccountModel(
      {this.leadingIcons,
      this.trailingIcons,
      this.trailingText,
      this.title,
      this.clssss});
}

class LanguageModel {
  String? image;
  String? countryName;
  LanguageModel({
    this.image,
    this.countryName,
  });

}


class PaymentMethodModel {
   String?  image;
   String?  title;
   String?  subtitle;

  PaymentMethodModel({
    this.image,
    this.title,
    this.subtitle,
  });
   
  }
