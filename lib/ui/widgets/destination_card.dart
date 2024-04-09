import 'package:airplane/ui/pages/detail_page.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class DestinationCard extends StatelessWidget {

  final String imageUrl;
  final String name;
  final String city;
  final double rating;

  const DestinationCard({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.city,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DetailPage())
        );
      },
      child: Container(
        width: 200,
        height: 323,
        margin: EdgeInsets.only(left: defaultMargin),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 180,
              height: 220,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                image: DecorationImage(
                  image: AssetImage(imageUrl),
                ),
              ),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 60,
                  height: 30,
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(18),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
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
                        rating.toString(),
                        style: blackTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: medium,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    overflow: TextOverflow.ellipsis,
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: medium,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    city,
                    overflow: TextOverflow.ellipsis,
                    style: greyTextStyle.copyWith(
                      fontSize: 15,
                      fontWeight: light,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
