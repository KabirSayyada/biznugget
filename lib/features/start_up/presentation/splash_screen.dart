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
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color(0XFF3F56F2),
              const Color(0XFF01C3CC).withOpacity(0),
              const Color(0XFF830D3F).withOpacity(0),
              const Color(0XFF830D3F).withOpacity(0),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            tileMode: TileMode.mirror,
            stops: const [
              0.4145,
              0.8333,
              0.9931,
              0.9932,
            ],
          ),
        ),
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset('assets/images/background_image.png'),
            SvgPicture.asset(
              'assets/svg/app_logo.svg',
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
