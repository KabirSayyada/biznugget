import 'package:biznugget/core/common/widgets/big_text.dart';
import 'package:biznugget/core/utils/colors.dart';
import 'package:biznugget/core/utils/dimensions.dart';
import 'package:biznugget/features/home/business_acc_home/data/models/sb_article_model.dart';
import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';

class SBExpandableCard extends StatelessWidget {
  const SBExpandableCard({
    Key? key,
    required this.article,
    required this.color,
    required this.title,
    this.padding,
  }) : super(key: key);

  final SBArticleModel article;
  final String title;
  final Color color;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: ExpandableNotifier(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expandable(
              // show button when collapsed
              collapsed: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _customButton(),
                  SizedBox(width: Dimensions.width10),
                  ExpandableButton(
                      // <-- Expands when tapped on the cover photo
                      child: const Icon(Icons.expand_circle_down_outlined)),
                ],
              ),
              // show description when expanded
              expanded: Column(
                children: [
                  BigText(
                    text: article.description,
                    maxLines: 5,
                    size: Dimensions.font18,
                  ),
                  SizedBox(height: Dimensions.height5),
                  ExpandableButton(
                    // <-- Collapses when tapped on
                    child: const Icon(Icons.expand_less_outlined),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container _customButton() {
    return Container(
      width: Dimensions.width200,
      padding: EdgeInsets.symmetric(
        horizontal: Dimensions.width25,
        vertical: Dimensions.height25,
      ),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(Dimensions.radius10),
      ),
      alignment: Alignment.center,
      child: BigText(text: title, color: Colors.white),
    );
  }
}
