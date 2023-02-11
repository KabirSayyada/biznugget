import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class HomeCustomAppBar extends StatelessWidget {
  const HomeCustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GFAppBar(
      leading: GFIconButton(
        icon: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        onPressed: () {},
        type: GFButtonType.transparent,
      ),
      title: Text("GF Appbar"),
      actions: <Widget>[
        GFIconButton(
          icon: GFAvatar(
            backgroundImage: AssetImage('assets/images/item1.png'),
          ),
          onPressed: () {},
          type: GFButtonType.transparent,
        ),
      ],
    );
  }
}
