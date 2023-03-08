import 'package:biznugget/features/home/business_home/presentation/pages/_2_advertise_screen.dart';
import 'package:biznugget/features/home/user_home/presentation/pages/home_screen.dart';
import 'package:biznugget/features/messages/messages_screen.dart';
import 'package:biznugget/features/profile/presentation/pages/profile_screen.dart';
import 'package:biznugget/features/wishlist/presentation/pages/wishlist_screen.dart';
import 'package:bloc/bloc.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

part 'bottom_navigation_bar_state.dart';

class BottomNavigationBarCubit extends Cubit<BottomNavigationBarState> {
  BottomNavigationBarCubit() : super(BottomNavigationBarSelected());

  /// Navigation bar items
  List<TabItem> tabsOfBottomNavigationBar = const [
    TabItem(icon: Icons.home, title: 'Home'),
    TabItem(icon: Icons.shopping_bag_outlined, title: 'Wishlist'),
    TabItem(icon: Icons.add_box_outlined, title: 'Advertise'),
    TabItem(icon: Icons.message_outlined, title: 'Messages'),
    TabItem(icon: Icons.person, title: 'Profile'),
  ];

  Widget currentScreen = HomeScreen();

  void selectTab(int index) {
    switch (index) {
      case 0:
        currentScreen = HomeScreen();
        emit(BottomNavigationBarSelected());
        break;
      case 1:
        currentScreen = WishlistScreen();
        emit(BottomNavigationBarSelected());
        break;
      case 2:
        currentScreen = AdvertiseScreen();
        emit(BottomNavigationBarSelected());
        break;
      case 3:
        currentScreen = MessagesScreen();
        emit(BottomNavigationBarSelected());
        break;
      case 4:
        currentScreen = ProfileScreen();
        emit(BottomNavigationBarSelected());
        break;
      default:
        currentScreen = HomeScreen();
        emit(BottomNavigationBarSelected());
    }
    emit(BottomNavigationBarSelected());
  }
}
