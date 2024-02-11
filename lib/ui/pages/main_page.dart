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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(),
                Container(
                  height: 24,
                  width: 24,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/icon_home.png'))),
                ),
                Container(
                  height: 2,
                  width: 30,
                  decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(defaultRadius)),
                )
              ],
            ),Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(),
                Container(
                  height: 24,
                  width: 24,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/icon_booking.png'))),
                ),
                Container(
                  height: 2,
                  width: 30,
                  decoration: BoxDecoration(
                      color: kTransparentColor,
                      borderRadius: BorderRadius.circular(defaultRadius)),
                )
              ],
            ),Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(),
                Container(
                  height: 24,
                  width: 24,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/icon_card.png'))),
                ),
                Container(
                  height: 2,
                  width: 30,
                  decoration: BoxDecoration(
                      color: kTransparentColor,
                      borderRadius: BorderRadius.circular(defaultRadius)),
                )
              ],
            ), Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(),
                Container(
                  height: 24,
                  width: 24,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/icon_settings.png'))),
                ),
                Container(
                  height: 2,
                  width: 30,
                  decoration: BoxDecoration(
                      color: kTransparentColor,
                      borderRadius: BorderRadius.circular(defaultRadius)),
                )
              ],
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
