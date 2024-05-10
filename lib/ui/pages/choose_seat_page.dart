import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/pages/checkout_page.dart';
import 'package:airplane/ui/widgets/seat_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../widgets/custom_button.dart';

class ChooseSeatPage extends StatelessWidget {
  const ChooseSeatPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 50),
        child: Text(
          'Select Your\nFavorite Seat',
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget seatStatus() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Row(
          children: [
            //Note: Available
            Container(
              height: 16,
              width: 16,
              margin: EdgeInsets.only(right: 6),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icon_available.png'),
                ),
              ),
            ),
            Text(
              'Available',
              style: blackTextStyle,
            ),
            //Note: Selected
            Container(
              height: 16,
              width: 16,
              margin: EdgeInsets.only(left: 10, right: 6),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icon_selected.png'),
                ),
              ),
            ),
            Text(
              'Selected',
              style: blackTextStyle,
            ),
            //Note: Unavailable
            Container(
              height: 16,
              width: 16,
              margin: EdgeInsets.only(left: 10, right: 6),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icon_unavailable.png'),
                ),
              ),
            ),
            Text(
              'Unavailable',
              style: blackTextStyle,
            ),
          ],
        ),
      );
    }

    Widget selectSeat() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 22,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: kWhiteColor,
        ),
        child: Column(
          children: [
            /** Note: Seat Indicator */
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 48,
                  width: 48,
                  child: Center(
                    child: Text(
                      'A',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                Container(
                  height: 48,
                  width: 48,
                  child: Center(
                    child: Text(
                      'B',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                Container(
                  height: 48,
                  width: 48,
                  child: Center(
                    child: Text(
                      '',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                Container(
                  height: 48,
                  width: 48,
                  child: Center(
                    child: Text(
                      'C',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                Container(
                  height: 48,
                  width: 48,
                  child: Center(
                    child: Text(
                      'D',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),

            /** Note: Seats*/
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SeatItem(id: 'A1'),
                SeatItem(id: 'B1'),
                Container(
                  height: 48,
                  width: 48,
                  child: Center(
                    child: Text(
                      '1',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                SeatItem(id: 'C1'),
                SeatItem(id: 'D1'),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SeatItem(id: 'A2'),
                SeatItem(id: 'B2'),
                Container(
                  height: 48,
                  width: 48,
                  child: Center(
                    child: Text(
                      '2',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                SeatItem(id: 'C2'),
                SeatItem(id: 'D2'),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SeatItem(id: 'A3'),
                SeatItem(id: 'B3'),
                Container(
                  height: 48,
                  width: 48,
                  child: Center(
                    child: Text(
                      '3',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                SeatItem(id: 'C3', isAvailable: true,),
                SeatItem(id: 'D3'),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SeatItem(
                  id: 'A4',
                  isAvailable: false,
                ),
                SeatItem(id: 'B4'),
                Container(
                  height: 48,
                  width: 48,
                  child: Center(
                    child: Text(
                      '4',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                SeatItem(id: 'C4'),
                SeatItem(id: 'D4'),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SeatItem(id: 'A5', isAvailable: false,),
                SeatItem(id: 'B5'),
                Container(
                  height: 48,
                  width: 48,
                  child: Center(
                    child: Text(
                      '5',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                SeatItem(id: 'C5'),
                SeatItem(id: 'D5'),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Your seat',
                  style: greyTextStyle.copyWith(
                    fontWeight: light,
                  ),
                ),
                Text(
                  'A3, B3',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total',
                  style: greyTextStyle.copyWith(
                    fontWeight: light,
                  ),
                ),
                Text(
                  'IDR 540.000',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                    color: kPrimaryColor,
                  ),
                )
              ],
            ),
          ],
        ),
      );
    }

    Widget checkoutButton() {
      return CustomButton(
        title: 'Continue to Checkout',
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CheckoutPage(),
            ),
          );
        },
        margin: EdgeInsets.only(
          top: 30,
          bottom: 40,
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          title(),
          seatStatus(),
          selectSeat(),
          checkoutButton(),
        ],
      ),
    );
  }
}
