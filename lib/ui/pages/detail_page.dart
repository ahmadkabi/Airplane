import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget backgroundImage() {
      return Container(
        height: 450,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/image_destination1.png'))),
      );
    }

    Widget customShadow() {
      return Container(
        margin: const EdgeInsets.only(top: 236),
        height: 214,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              kWhiteColor.withOpacity(0),
              Colors.black.withOpacity(0.95)
            ])),
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 30),
        child: Column(
          children: [
            /** Note: Emblem*/
            Container(
              height: 24,
              width: 108,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/icon_emblem.png'))),
            ),

            /** Note: Title*/
            // last here
            Container()
          ],
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [backgroundImage(), customShadow(), content()],
      ),
    );
  }
}
