import 'package:flutter/material.dart';
import 'package:onboarding/app_styles.dart';
import 'package:onboarding/size_configs.dart';

class MyTextButton extends StatelessWidget {
  const MyTextButton({
    super.key, 
    required this.buttonName, 
    required this.bgColor,
  });

  final String buttonName;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    double sizeH = SizeConfig.blockSizeH!;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: SizedBox(
        height: sizeH * 15.5,
        width: sizeH * 100,
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: bgColor,
          ),
          child: Text(
            buttonName,
            style: bodyText,
          ),
        ),
      ),
    );
  }
}