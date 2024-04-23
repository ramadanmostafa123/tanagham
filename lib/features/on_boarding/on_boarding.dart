import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tanagham/core/extensions/num_extensions.dart';
import 'package:tanagham/core/helpers/spacing.dart';
import 'package:tanagham/core/routing/routing.dart';
import 'package:tanagham/core/theming/colors.dart';
import 'package:tanagham/core/theming/text_styles.dart';
import 'package:tanagham/features/auth/login_or_signup/login_or_signup.dart';
import 'package:tanagham/features/on_boarding/widgets/screen_one.dart';
import 'package:tanagham/features/on_boarding/widgets/screen_three.dart';
import 'package:tanagham/features/on_boarding/widgets/screen_two.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  late PageController pageController;
  int currentPageIndex = 0;
  List<Widget> pages = [
    const ScreenOne(),
    const ScreenTwo(),
    const ScreenThree(),
  ];
  List<String> texts = [
    'Consult only with a doctor you trust',
    'Find a lot of specialist doctors in one place',
    'Get connect our Online Consultation',
  ];

  @override
  void initState() {
    super.initState();
    pageController = PageController();
    currentPageIndex = 0;
    pageController.addListener(() {
      setState(() {
        currentPageIndex = pageController.page!.round();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    bool isLast = true;

    if (currentPageIndex == pages.length - 1) {
      isLast = true;
    } else {
      isLast = false;
    }
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              verticalSpace(30),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    // Skip button pressed
                    pushReplacement(const LoginOrSignup());
                  },
                  child: Text(
                    'Skip',
                    style: TextStyle(
                      color: AppColors.primaryTextColor,
                      fontFamily: 'InterLight',
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: PageView.builder(
                  controller: pageController,
                  itemBuilder: (context, index) {
                    return pages[index];
                  },
                  itemCount: pages.length,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.primaryBrandColor,
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      AppColors.primaryBackgroundColor,
                      AppColors.secondaryBackgroundColor,
                      Colors.white,
                    ],
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        texts[currentPageIndex],
                        style: AppTextStyles.interBoldSize22PrimaryColor,
                      ),
                    ),
                    verticalSpace(10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SmoothPageIndicator(
                            controller: pageController,
                            count: pages.length,
                            axisDirection: Axis.horizontal,
                            effect: const SlideEffect(
                                spacing: 4.0,
                                radius: 4.0,
                                dotWidth: 20.0,
                                dotHeight: 4.0,
                                paintStyle: PaintingStyle.stroke,
                                strokeWidth: 1.5,
                                dotColor: Colors.grey,
                                activeDotColor: AppColors.secondaryTextColor),
                          ),
                          const Spacer(),
                          FloatingActionButton(
                            backgroundColor: AppColors.secondaryTextColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            onPressed: () {
                              if (pageController.page! < pages.length - 1) {
                                pageController.nextPage(
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.ease,
                                );
                              } else {
                                pushReplacement(const LoginOrSignup());
                              }
                            },
                            child: isLast
                                ? const Icon(
                                    Icons.check,
                                    color: Colors.white,
                                  )
                                : const Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                  ),
                          ),
                        ],
                      ),
                    ),
                    verticalSpace(10),
                  ],
                ),
              ),
              verticalSpace(50),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
