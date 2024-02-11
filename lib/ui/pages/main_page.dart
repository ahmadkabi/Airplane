import 'package:airplane/ui/widgets/custom_bottom_navigation_item.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  Widget bottomNavigation() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,
        height: 60,
        margin: EdgeInsets.only(
          right: defaultMargin,
          left: defaultMargin,
          bottom: 30,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomBottomNavigationItem(
              imageUrl: 'assets/icon_home.png',
              isSelected: true,
            ),
            CustomBottomNavigationItem(
              imageUrl: 'assets/icon_booking.png',
            ),
            CustomBottomNavigationItem(
              imageUrl: 'assets/icon_card.png',
            ),
            CustomBottomNavigationItem(
              imageUrl: 'assets/icon_settings.png',
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          Text('Main'),
          bottomNavigation(),
        ],
      ),
    );
  }
}
