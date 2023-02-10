import 'package:biznugget/features/start_up/model/onboarding_model.dart';
import 'package:biznugget/features/start_up/presentation/onboarding_screen.dart';
import 'package:biznugget/features/start_up/presentation/widgets/onboarding_tile.dart';
import 'package:biznugget/utils/constants.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<void> decideNavigation() async {
    await Future.delayed(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => OnboardingScreen()
          // OnboardingTile(
          //   onboardingItem: onboardingModelData[0],
          // ),
        ),
      ),
    );
  }

  @override
  void initState() {
    decideNavigation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0XFF3F56F2),
              Color.fromRGBO(1, 195, 204, 100),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            tileMode: TileMode.clamp,
          ),
        ),
        alignment: Alignment.center,
        child: Image.asset(
          'assets/images/app_logo.png',
        ),
      ),
    );
  }
}
