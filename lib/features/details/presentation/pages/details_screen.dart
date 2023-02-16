import 'package:biznugget/features/details/presentation/widgets/carousel_slider_widget.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Details Screen'),
      ),
      body: Center(
        child: CarouselSliderWidget(),
      )
    );
  }
}
