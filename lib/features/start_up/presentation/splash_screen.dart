import 'package:biznugget/features/start_up/presentation/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
        MaterialPageRoute(builder: (context) => const OnboardingScreen()),
      ),
    );
  }

  void waitSVG() {
    Future.delayed(const Duration(seconds: 2));
  }
  @override
  void initState() {
    waitSVG();
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
            // tileMode: TileMode.clamp,
          ),
        ),
        alignment: Alignment.center,
        child: SvgPicture.asset(
          'assets/svg/app_logo.svg',
          color: Colors.white,
        ),
      ),
    );
  }
}
