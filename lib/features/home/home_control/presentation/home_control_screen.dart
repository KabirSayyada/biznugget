import 'package:biznugget/features/home/business_home/presentation/pages/_1_business_home_screen.dart';
import 'package:biznugget/features/home/user_home/presentation/pages/home_screen.dart';
import 'package:flutter/material.dart';

class HomeControlScreen extends StatelessWidget {
  const HomeControlScreen({Key? key}) : super(key: key);

  /// receive user type from auth bloc
  final String userType = 'business';

  @override
  Widget build(BuildContext context) {
    /// if business account return business home page else return user home page
    return userType == 'business' ? BusinessHomeScreen() : HomeScreen();
  }
}
