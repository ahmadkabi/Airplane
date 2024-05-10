import 'package:airplane/cubit/seat_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../shared/theme.dart';

class SeatItem extends StatelessWidget {
  /// NOTE
  ///   0 == available
  ///   1 == selected
  ///   2 == unavailable
  ///
  final String id;
  final bool isAvailable;

  const SeatItem({
    super.key,
    required this.id,
    this.isAvailable = true,
  });

  @override
  Widget build(BuildContext context) {

    bool isSelected = context.read<SeatCubit>().isSelected(id);

    backgroundColor() {
      if(isAvailable){
        if(isSelected){
          return kPrimaryColor;
        }else{
          return kAvailableColor;
        }
      }else{
        return kUnavailableColor;
      }
    }

    borderColor() {
      if(isAvailable){
        return kPrimaryColor;
      }else{
        return kUnavailableColor;
      }
    }

    child() {
      if(isSelected){
        return Center(
          child: Text(
            'You',
            style: whiteTextStyle.copyWith(fontWeight: semiBold),
          ),
        );
      }else{
        return SizedBox();
      }
    }

    return GestureDetector(
      onTap: (){
        if(isAvailable){
          context.read<SeatCubit>().selectSeat(id);
        }
      },
      child: Container(
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
          child: child()),
    );
  }
}
