import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 150,
                width: 300,
                margin: EdgeInsets.only(top: 212),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/image_calendar'),
                  ),
                ),
              ),
              SizedBox(
                height: 80,
              ),
              Text(
                'Well Booked',
                style: blackTextStyle.copyWith(
                  fontSize: 32,
                  fontWeight: bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                textAlign: TextAlign.center,
                'Are you ready to explore the new\nworld of experiences?',
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: light,
                ),
              ),
              CustomButton(
                margin: EdgeInsets.only(
                  top: 50,
                  left: 78,
                  right: 78,
                  bottom: 150,
                ),
                title: 'My Bookings',
                width: double.infinity,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SuccessPage(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
