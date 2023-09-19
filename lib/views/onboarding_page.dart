import 'package:flutter/material.dart';
import 'package:onboarding/app_styles.dart';
import 'package:onboarding/model/onboard_data.dart';
import 'package:onboarding/size_configs.dart';
import 'package:onboarding/widgets/widget.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  int currentPage = 0;

  final PageController _pageController = PageController(initialPage: 0);
  
  AnimatedContainer dotIndicator(index) {
    return AnimatedContainer(
      margin: const EdgeInsets.only(right: 5),
      duration: const Duration(milliseconds: 400),
      height: 12,
      width: 12,
      decoration: BoxDecoration(
        color: currentPage == index ? primaryColor :
        secondaryColor,
        shape: BoxShape.circle,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // initialize size config
    SizeConfig().init(context);
    double sizeV = SizeConfig.blockSizeV!;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            children: [
              Expanded(
                flex: 9,
                child: PageView.builder(
                  controller: _pageController,
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemCount: onboardingContents.length,
                  itemBuilder: (context, index) => Column(
                    children: [
                      SizedBox(
                        height: sizeV * 5,
                      ),
                      Text(
                        onboardingContents[index].title,
                        style: title,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: sizeV * 5,
                      ),
                      // ignore: sized_box_for_whitespace
                      Container(
                        height: sizeV * 50,
                        child: Image.asset(
                          onboardingContents[index].image,
                          fit: BoxFit.contain,
                        ),
                      ),
                      SizedBox(
                        height: sizeV * 5,
                      ),
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style: bodyText,
                          children: [
                            const TextSpan(text: 'WE CAN '),
                            TextSpan(
                              text: 'HELP YOU ', 
                              style: TextStyle(
                                color: primaryColor,
                              )
                            ),
                            const TextSpan(text: 'TO BE A BETTER '),
                            const TextSpan(text: 'VERSION OF '),
                            TextSpan(
                              text: 'YOURSELF',
                              style: TextStyle(
                                color: primaryColor,
                              )
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: sizeV * 5,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    currentPage == onboardingContents.length - 1
                    ? MyTextButton(
                      buttonName: 'Get Started',
                      bgColor: primaryColor,
                    )
                    : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        OnBoardPrevBtn(
                          name: 'Prev',
                          onPressed: () {
                            _pageController.previousPage(
                              duration: const Duration(milliseconds: 400),
                              curve: Curves.easeInOut,
                            );
                          },
                        ),
                        Row(
                          children: List.generate(onboardingContents.length, 
                          (index) => dotIndicator(index),),
                        ),
                        OnBoardNextBtn(
                          name: 'Next',
                          onPressed: () {
                            _pageController.nextPage(
                              duration: const Duration(milliseconds: 400),
                              curve: Curves.easeInOut,
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}