import 'package:flutter/material.dart';
import 'package:onboarding/size_configs.dart';

Color primaryColor = const Color(0xffFC9D45);
Color secondaryColor = const Color(0xff573353);

final title = TextStyle(
  fontFamily: 'Klasik',
  fontSize: SizeConfig.blockSizeH! * 7,
  color: secondaryColor,
);

final bodyText = TextStyle(
  fontSize: SizeConfig.blockSizeH! * 4.5,
  color: secondaryColor,
  fontWeight: FontWeight.bold,
);