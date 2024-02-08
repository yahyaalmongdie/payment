import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payment/core/utils/app_asset.dart';
import 'package:payment/core/utils/app_style.dart';

class CardInfoWidget extends StatelessWidget {
  const CardInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 22),
      height: 73,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: Row(
        children: [
          SvgPicture.asset(Assets.imagesMasterCard),
          const SizedBox(
            width: 23,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Expanded(child: Text("Credit Card", style: AppStyle.style18)),
            Expanded(child: Text("MasterCArd **78", style: AppStyle.style16)),
          ])
        ],
      ),
    );
  }
}
