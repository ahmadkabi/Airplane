import 'package:airplane/models/transaction_model.dart';
import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/pages/success_checkout_page.dart';
import 'package:airplane/ui/widgets/booking_detail_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import '../../cubit/auth_cubit.dart';
import '../widgets/custom_button.dart';

class CheckoutPage extends StatelessWidget {
  final TransactionModel transaction;

  const CheckoutPage(this.transaction, {super.key});

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
                      image: NetworkImage(transaction.destination.imageUrl),
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
                        transaction.destination.name,
                        style: blackTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: semiBold,
                        ),
                      ),
                      Text(
                        transaction.destination.city,
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
                  transaction.destination.rating.toString(),
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
            BookingDetailItem(
              title: 'Traveler',
              valueText: '${transaction.amountOfTraveler} Person',
              valueColor: kBlackColor,
            ),
            BookingDetailItem(
              title: 'Seat',
              valueText: transaction.selectedSeats,
              valueColor: kBlackColor,
            ),
            BookingDetailItem(
              title: 'Insurance',
              valueText: transaction.insurance ? 'Yes' : 'No',
              valueColor: transaction.insurance ? kGreenColor : kRedColor,
            ),
            BookingDetailItem(
              title: 'Refundable',
              valueText: transaction.refundable ? 'Yes' : 'No',
              valueColor: transaction.refundable ? kGreenColor : kRedColor,
            ),
            BookingDetailItem(
              title: 'VAT',
              valueText: '${(transaction.vat * 100).toStringAsFixed(0)}%',
              valueColor: kPrimaryColor,
            ),
            BookingDetailItem(
              title: 'Price',
              valueText: NumberFormat.currency(
                locale: 'id',
                symbol: 'IDR ',
                decimalDigits: 0,
              ).format(transaction.price),
              valueColor: kPrimaryColor,
            ),
            BookingDetailItem(
              title: 'Grand Total',
              valueText: NumberFormat.currency(
                locale: 'id',
                symbol: 'IDR ',
                decimalDigits: 0,
              ).format(transaction.grandTotal),
              valueColor: kPrimaryColor,
            ),
          ],
        ),
      );
    }

    Widget paymentDetail() {
      return BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          if (state is AuthSuccess) {
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
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/image_card.png')),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 24,
                              width: 24,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/icon_plane.png'),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 6,
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
                              NumberFormat.currency(
                                locale: 'id',
                                symbol: 'IDR ',
                                decimalDigits: 0,
                              ).format(state.user.balance),
                              style: blackTextStyle.copyWith(
                                  fontSize: 18, fontWeight: bold),
                              overflow: TextOverflow.ellipsis,
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

          return SizedBox();
        },
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
                    builder: (context) => SuccessCheckoutPage(),
                  ),
                );
              },
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Terms and Conditions',
              style: greyTextStyle.copyWith(fontSize: 16, fontWeight: light),
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
