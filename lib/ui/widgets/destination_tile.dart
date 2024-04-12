import 'package:flutter/material.dart';
import '../../shared/theme.dart';
import '../pages/detail_page.dart';

class DestinationTile extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String city;
  final double rating;

  const DestinationTile({
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
            context, MaterialPageRoute(builder: (context) => DetailPage()));
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(
          color: kBackgroundColor,
          borderRadius: BorderRadius.circular(18),
        ),
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                image: DecorationImage(
                  image: AssetImage(imageUrl),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: medium,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    city,
                    style: greyTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: light,
                    ),
                  ),
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
              rating.toString(),
              style: blackTextStyle.copyWith(
                fontSize: 14,
                fontWeight: medium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
