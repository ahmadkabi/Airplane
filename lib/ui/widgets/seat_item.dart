import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class SeatItem extends StatelessWidget {
  /// NOTE
  ///   0 == available
  ///   1 == selected
  ///   2 == unavailable
  ///
  final int state;

  const SeatItem({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    backgroundColor() {
      switch (state) {
        case 0:
          return kAvailableColor;
        case 1:
          return kPrimaryColor;
        case 2:
          return kUnavailableColor;
        default:
          return kUnavailableColor;
      }
    }

    borderColor() {
      switch (state) {
        case 0:
          return kPrimaryColor;
        case 1:
          return kPrimaryColor;
        case 2:
          return kUnavailableColor;
        default:
          return kUnavailableColor;
      }
    }

    child() {
      switch (state) {
        case 0:
          return SizedBox();
        case 1:
          return Center(
            child: Text(
              'You',
              style: whiteTextStyle.copyWith(fontWeight: semiBold),
            ),
          );
        case 2:
          return SizedBox();
        default:
          return SizedBox();
      }
    }

    return Container(
        height: 48,
        width: 48,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: backgroundColor(),
          border: Border.all(
            color: borderColor(),
            width: 2,
          ),
        ),
        child: child());
  }
}
