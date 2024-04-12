import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class InterestItem extends StatelessWidget {
  final String text;

  const InterestItem({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
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
            width:6,
          ),
          Text(
            text,
            style: blackTextStyle,
          )
        ],
      ),
    );
  }
}
