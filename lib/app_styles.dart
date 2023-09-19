import 'package:flutter/material.dart';
import 'package:onboarding/size_configs.dart';

Color primaryColor = const Color(0xffFC9D45);
Color secondaryColor = const Color(0xff573353);

// Try to adjust the size of font *if you get the oversized fonts*
final title = TextStyle(
  fontFamily: 'Klasik',
  // Change the size from 7 to 6, then return 6 to 7 back
  fontSize: SizeConfig.blockSizeH! * 7,
  // fontSize: SizeConfig.blockSizeH! * 6,
  color: secondaryColor,
);

final bodyText = TextStyle(
  // 4.5 to 3, then 3 to 4.5
  fontSize: SizeConfig.blockSizeH! * 4.5,
  // fontSize: SizeConfig.blockSizeH! * 3,
  color: secondaryColor,
  fontWeight: FontWeight.bold,
);
