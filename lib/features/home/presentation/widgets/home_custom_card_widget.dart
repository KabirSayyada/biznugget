import 'package:getwidget/getwidget.dart';
import 'package:flutter/material.dart';

class HomeCustomCard extends StatelessWidget {
  const HomeCustomCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GFCard(
      boxFit: BoxFit.cover,
      image: Image.asset('your asset image'),
      title: GFListTile(
        avatar: GFAvatar(
          backgroundImage: AssetImage('your asset image'),
        ),
        title: Text('Card Title'),
        subTitle: Text('Card Sub Title'),
      ),
      content: Text("Some quick example text to build on the card"),
      buttonBar: GFButtonBar(
        children: <Widget>[
          GFButton(
            onPressed: () {},
            text: 'Buy',
          ),
          GFButton(
            onPressed: () {},
            text: 'Cancel',
          ),
        ],
      ),
    );
  }
}
