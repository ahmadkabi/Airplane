import 'package:airplane/models/transaction_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../shared/theme.dart';
import 'booking_detail_item.dart';

class TransactionCard extends StatelessWidget {

  final TransactionModel transaction;

  const TransactionCard(this.transaction, {super.key});

  @override
  Widget build(BuildContext context) {
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
}
