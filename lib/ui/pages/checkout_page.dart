import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/pages/SuccessPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../widgets/custom_button.dart';
import 'choose_seat_page.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget route() {
      return Container(
        margin: EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Container(
              height: 65,
              width: 291,
              margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image_checkout.png'),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'CGK',
                      style: blackTextStyle.copyWith(
                        fontSize: 24,
                        fontWeight: semiBold,
                      ),
                    ),
                    Text(
                      'Tangerang',
                      style: greyTextStyle.copyWith(
                        fontWeight: light,
                      ),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'TLC',
                      style: blackTextStyle.copyWith(
                        fontSize: 24,
                        fontWeight: semiBold,
                      ),
                    ),
                    Text(
                      'Ciliwung',
                      style: greyTextStyle.copyWith(
                        fontWeight: light,
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      );
    }

    Widget bookingDetails() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        padding: EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 20,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: kWhiteColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/image_destination1.png'),
                    ),
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Lake Ciliwung',
                        style: blackTextStyle.copyWith(
                            fontSize: 18, fontWeight: semiBold),
                      ),
                      Text(
                        'Tangerang',
                        style: greyTextStyle.copyWith(fontWeight: light),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 20,
                  height: 20,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/icon_star.png'),
                    ),
                  ),
                ),
                const SizedBox(width: 3),
                Text(
                  '2.4',
                  style: blackTextStyle.copyWith(
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text('Booking Details',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: bold,
                )),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  height: 16,
                  width: 16,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/icon_check.png'),
                    ),
                  ),
                ),
                SizedBox(
                  width: 6,
                ),
                Expanded(
                  child: Text(
                    'Traveler',
                    style: blackTextStyle,
                  ),
                ),
                Text(
                  '2 person',
                  style: blackTextStyle.copyWith(fontWeight: bold),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Container(
                  height: 16,
                  width: 16,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/icon_check.png'),
                    ),
                  ),
                ),
                SizedBox(
                  width: 6,
                ),
                Expanded(
                  child: Text(
                    'Traveler',
                    style: blackTextStyle,
                  ),
                ),
                Text(
                  '2 person',
                  style: blackTextStyle.copyWith(fontWeight: bold),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget paymentDetail() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        padding: EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 20,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: kWhiteColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Payment Details',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: bold,
                )),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  width: 100,
                  height: 70,
                  padding: EdgeInsets.symmetric(
                    vertical: defaultMargin,
                    horizontal: 20,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Colors.red,
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 24,
                        width: 24,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/image_plane.png'),
                          ),
                        ),
                      ),
                      Text(
                        'Pay',
                        style: whiteTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'IDR 80.400.000',
                        style: blackTextStyle.copyWith(
                            fontSize: 18, fontWeight: bold),
                      ),
                      Text(
                        'Current Balance',
                        style: greyTextStyle.copyWith(
                          fontWeight: light,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget payNowButton() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          children: [
            CustomButton(
              title: 'Pay Now',
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
            SizedBox(
              height: 30,
            ),
            Text(
              'Terms and Conditions',
              style: greyTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: light
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        children: [
          route(),
          bookingDetails(),
          paymentDetail(),
          payNowButton(),
        ],
      ),
    );
  }
}
