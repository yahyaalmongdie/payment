import 'package:flutter/material.dart';
import 'package:payment/features/checkout/presentation/view/widget/custom_card_thank_you.dart';
import 'package:payment/features/checkout/presentation/view/widget/custom_check_icon.dart';
import 'package:payment/features/checkout/presentation/view/widget/custom_dashed_line.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          const CustomCardThankYou(),
          Positioned(
              //20 for radius for circle avatar
              right: 20 + 8,
              left: 20 + 8,
        
              bottom: MediaQuery.sizeOf(context).height * .2 + 20,
              child: const CustomDashedLine()),
          Positioned(
              left: -20,
              bottom: MediaQuery.sizeOf(context).height * .2,
              child: const CircleAvatar(
                backgroundColor: Colors.white,
              )),
          Positioned(
              right: -20,
              bottom: MediaQuery.sizeOf(context).height * .2,
              child: const CircleAvatar(
                backgroundColor: Colors.white,
              )),
          const Positioned(
              left: 0,
              right: 0,
              top: -50,
              child: CustomCheckIcon())
        ],
      ),
    );
  }
}



