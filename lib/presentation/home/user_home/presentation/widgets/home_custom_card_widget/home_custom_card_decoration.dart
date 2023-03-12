import 'package:biznugget/core/utils/colors.dart';
import 'package:biznugget/core/utils/dimensions.dart';
import 'package:flutter/material.dart';

class HomeCustomCardDecoration {
  BoxDecoration decoration(
          {required int index, required BuildContext context}) =>
      BoxDecoration(
        color: cardColors(index: index, isCard: true),
        borderRadius: BorderRadius.circular(Dimensions.radius5),
        border: cardColors(index: index, isBorder: true) != null
            ? Border.all(
                color: cardColors(index: index, isBorder: true),
                width: Dimensions.height3,
              )
            : null,
      );

  /// choose colors for every card
  cardColors(
      {required int index,
      bool isCard = false,
      isBorder = false,
      isShadow = false,
      isIcon = false}) {
    int row = (index / 2).floor();
    bool isLeftColored = row.isEven && index.isEven;
    bool isRightColored = row.isOdd && index.isOdd;
    if (isLeftColored || isRightColored) {
      return _ifColored(
          index: index,
          isCard: isCard,
          isBorder: isBorder,
          isShadow: isShadow,
          isIcon: isIcon);
    } else {
      return _ifNotColored(
          index: index,
          isCard: isCard,
          isBorder: isBorder,
          isShadow: isShadow,
          isIcon: isIcon);
    }
  }

  /// every colored card has shadow, no border and white icon
  _ifColored(
      {required int index,
      bool isCard = false,
      isBorder = false,
      isShadow = false,
      isIcon = false}) {
    Color color = _currenColor(index);
    if (isCard) {
      return color;
    } else if (isBorder) {
      return null;
    } else if (isShadow) {
      return color;
    } else if (isIcon) {
      return Colors.white;
    } else {
      /// check this
      return color.withOpacity(1);
    }
  }

  /// every uncolored card has no shadow, border and colored icon
  _ifNotColored(
      {required int index,
      bool isCard = false,
      isBorder = false,
      isShadow = false,
      isIcon = false}) {
    Color color = _currenColor(index);
    if (isCard) {
      return Colors.white;
    } else if (isBorder) {
      return color;
    } else if (isShadow) {
      return null;
    } else if (isIcon) {
      return color.withOpacity(1);
    } else {
      /// check this
      return Colors.white;
    }
  }

  /// get current color
  Color _currenColor(int index) {
    int row = index % 2 == 0 ? ((index + 1) % 3) : (index % 3);
    switch (row) {
      case 0:
        return AppColors.cardBorderColor1.withOpacity(0.13);
      case 1:
        return AppColors.cardBorderColor2.withOpacity(0.13);
      case 2:
        return AppColors.cardBorderColor3.withOpacity(0.13);
      default:
        return Colors.white;
    }
  }
}
