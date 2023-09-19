import 'package:flutter/material.dart';
import 'package:onboarding/app_styles.dart';

class OnBoardPrevBtn extends StatelessWidget {
  const OnBoardPrevBtn({
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
        padding: const EdgeInsets.all(0),
        child: Text(
          name,
          style: bodyText,
        ),
      ),
    );
  }
}