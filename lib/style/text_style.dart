import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'colors.dart';

class AppTextStyle{
//ppal
  static TextStyle mainTitleStyle = const TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
  );
  //secundario
  static TextStyle secondaryTitleStyle = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
    color: AppColor.primaryColor,
  );

  static TextStyle priceTextStyle = TextStyle(
    fontSize: 32.0,
    color: AppColor.primaryColor,
    fontWeight: FontWeight.w500,
  );

  static TextStyle detailsTextStyle = const TextStyle(
    fontSize: 34.0,
    fontWeight: FontWeight.bold,
  );
}