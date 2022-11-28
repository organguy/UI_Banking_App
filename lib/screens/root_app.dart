import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons_null_safety/flutter_icons_null_safety.dart';
import 'package:ui_banking_app/screens/dashboard_screen.dart';

import '../theme/color.dart';


class RootApp extends StatefulWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  State<RootApp> createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {

  int pageIndex = 0;

  Widget _getTabs(){
    List<IconData> iconItems = [
      MaterialCommunityIcons.view_grid,
      MaterialCommunityIcons.comment,
      MaterialCommunityIcons.bell,
      MaterialCommunityIcons.account_circle,
    ];

    return AnimatedBottomNavigationBar(
      icons: iconItems,
      activeColor: primary,
      inactiveColor: Colors.black.withOpacity(0.5),
      splashColor: secondary,
      gapLocation: GapLocation.center,
      notchSmoothness: NotchSmoothness.softEdge,
      leftCornerRadius: 10,
      rightCornerRadius: 10,
      activeIndex: pageIndex,
      onTap: (index){
        setState(() {
          pageIndex = index;
        });
      },
    );
  }

  Widget _getBody(){
    return IndexedStack(
      index: pageIndex,
      children: const [
        DashboardScreen(),
        Center(
          child: Text(
            'Chat Page',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
        Center(
          child: Text(
            'Notification Page',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
        Center(
          child: Text(
            'Account Page',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
        Center(
          child: Text(
            'Credit Card Page',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _getBody(),
      bottomNavigationBar: _getTabs(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            pageIndex = 4;
          });
        },
        backgroundColor: primary,
        child: const Icon(AntDesign.creditcard, size: 25,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
