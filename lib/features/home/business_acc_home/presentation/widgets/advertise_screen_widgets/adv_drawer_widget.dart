import 'package:biznugget/core/utils/assets_manager.dart';
import 'package:biznugget/core/utils/dimensions.dart';
import 'package:flutter/material.dart';

class ADVDrawer extends StatelessWidget {
  const ADVDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListTileTheme(
        textColor: Colors.white,
        iconColor: Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          /// drawer tabs
          children: [
            Container(
              width: Dimensions.width128,
              height: Dimensions.height128,
              margin: EdgeInsets.only(
                top: Dimensions.height25,
                bottom: Dimensions.height60,
              ),
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(
                color: Colors.black26,
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                AppImages.logo,
              ),
            ),
            ListTile(
              onTap: () {
                /// todo : go to 'sell Buy' screen
              },
              leading: const Icon(Icons.menu_open_rounded),
              title: const Text('MAIN MENU'),
            ),
            ListTile(
              onTap: () {
                /// todo : goto home screen
              },
              leading: Icon(Icons.home),
              title: const Text('HOME'),
            ),
            ListTile(
              onTap: () {
                /// todo : goto profile screen
              },
              leading: const Icon(Icons.account_circle_rounded),
              title: const Text('PROFILE'),
            ),
            ListTile(
              onTap: () {
                /// todo : goto favorites screen
              },
              leading: const Icon(Icons.favorite),
              title: const Text('FAVORITES'),
            ),
            ListTile(
              onTap: () {
                /// todo : goto settings screen
              },
              leading: const Icon(Icons.settings),
              title: const Text('SETTINGS'),
            ),
            ListTile(
              onTap: () {
                /// todo : goto help screen
              },
              leading: const Icon(Icons.logout),
              title: const Text('SIGN OUT'),
            ),
            const Spacer(),
            DefaultTextStyle(
              style: TextStyle(
                fontSize: Dimensions.font12,
                color: Colors.white54,
              ),
              child: Container(
                margin: EdgeInsets.symmetric(
                  vertical: Dimensions.height15,
                ),
                child:
                    const Text('Biznugget | Terms of Service | Privacy Policy'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
