import 'package:flutter/material.dart';
import 'package:onboarding/app_styles.dart';

class OnBoardNextBtn extends StatelessWidget {
  const OnBoardNextBtn({
    Key? key,
    required this.name,
    required this.onPressed,
  }) : super(key: key);
  final String name;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(6),
      splashColor: Colors.black12,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Text(
          name,
          style: bodyText,
        ),
      ),
    );
  }
}