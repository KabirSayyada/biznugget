import 'package:biznugget/utils/constants.dart';

class Dimension {
  static final double screenHeight = Constants.screenHeight;
  static final double screenWidth = Constants.screenWidth;

  /**
   *
   * height =  screenHeight / scaling_factor;
   *
   * let suppose want a container which having height 220, screenHeight = 844
   * then, 844 / 220 = 3.84
   *
   **/


  /**height and width */
  static double height5 = screenHeight / 168.8;
  static double width5 = screenWidth / 168.8;

  static double height10 = screenHeight / 84.4;
  static double width10 = screenWidth / 84.4;

  static double height15 = screenHeight / 56.6;
  static double width15 = screenWidth / 56.6;

  static double height20 = screenHeight / 42.2;
  static double width20 = screenWidth / 42.2;

  static double height30 = screenHeight / 28.1;
  static double width30 = screenWidth / 28.1;

  static double height45 = screenHeight / 18.7;
  static double width45 = screenWidth / 18.7;

  static double height50 = screenHeight / 16.8;
  static double width50 = screenWidth / 16.8;

  static double height60 = screenHeight / 14.1;
  static double width60 = screenWidth / 14.1;

  static double height70 = screenHeight / 12.1;
  static double width70 = screenWidth / 12.1;

  static double height300 = screenHeight / 2.8;
  static double width300 = screenWidth / 2.8;

  /**Fonts */
  static double font12 = screenHeight / 70.3;
  static double font14 = screenHeight / 60.57;
  static double font16 = screenHeight / 52.7;
  static double font18 = screenHeight / 46.78;
  static double font20 = screenHeight / 42.2;
  static double font26 = screenHeight / 32.46;

  /**Radius */
  static double radius5 = screenHeight / 168.8;
  static double radius10 = screenHeight / 84.4;
  static double radius15 = screenHeight / 56.6;
  static double radius20 = screenHeight / 42.2;
  static double radius30 = screenHeight / 28.13;

  /**Icon size */


}
