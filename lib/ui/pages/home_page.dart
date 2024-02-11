import 'package:airplane/ui/widgets/destination_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';
import '../widgets/latest_destination.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          right: defaultMargin,
          left: defaultMargin,
          top: 30,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Howdy,\nKezia Anne',
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semiBold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    'Where to fly today?',
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: light,
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 60,
              height: 60,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/image_profile.png'),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget popularDestination() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              DestinationCard(
                imageUrl: 'assets/image_destination1.png',
                name: 'Lake Ciliwung',
                city: 'Tangerang',
                rating: 4.3,
              ),
              DestinationCard(
                imageUrl: 'assets/image_destination2.png',
                name: 'Hill Henko',
                city: 'South Korea',
                rating: 3.0,
              ),
              DestinationCard(
                imageUrl: 'assets/image_destination3.png',
                name: 'Warung Mantap',
                city: 'Cimindi',
                rating: 4.5,
              ),
            ],
          ),
        ),
      );
    }

    Widget latestDestination() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          right: defaultMargin,
          left: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New This Year',
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(height: 16),
            const LatestDestination(
              imageUrl: 'assets/image_destination1.png',
              name: "Danau Toba",
              city: "Medan",
              rating: 5.0,
            ),
            const LatestDestination(
              imageUrl: 'assets/image_destination1.png',
              name: "Danau Toba",
              city: "Medan",
              rating: 5.0,
            ),
            const LatestDestination(
              imageUrl: 'assets/image_destination1.png',
              name: "Danau Toba",
              city: "Medan",
              rating: 5.0,
            ),
            const LatestDestination(
              imageUrl: 'assets/image_destination1.png',
              name: "Danau Toba",
              city: "Medan",
              rating: 5.0,
            ),
            const SizedBox(
              height: 200,
            )
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        popularDestination(),
        latestDestination(),
      ],
    );
  }
}
