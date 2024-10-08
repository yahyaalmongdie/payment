import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payment/core/utils/app_style.dart';
import 'package:payment/features/checkout/presentation/view/widget/card_info_widget.dart';
import 'package:payment/features/checkout/presentation/view/widget/payment_item_info.dart';
import 'package:payment/features/checkout/presentation/view/widget/total_price.dart';

class CustomCardThankYou extends StatelessWidget {
  const CustomCardThankYou({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: const Color(0xffEDEDED),
          borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.only(top: 50 + 16, left: 20, right: 20),
        child: Column(
          children: [
            Text(
              "Thank you!",
              style: AppStyle.style25,
            ),
            Text(
              "Your transaction was successful",
              style: AppStyle.style20,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 42,
            ),
            const PaymentItemInfo(title: "Date", value: "01/24/2023"),
            const SizedBox(
              height: 20,
            ),
            const PaymentItemInfo(title: "Time", value: "10:15 AM"),
            const SizedBox(
              height: 20,
            ),
            const PaymentItemInfo(title: "To", value: "Sam Louis"),
            const Divider(
              thickness: 2,
              height: 60,
            ),
            const TotalPrice(title: "Total", value: r"$50.97"),
            const SizedBox(
              height: 30,
            ),
            const CardInfoWidget(),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  FontAwesomeIcons.barcode,
                  size: 64,
                ),
                Container(
                  height: 58,
                  width: 113,
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 1.50, color: const Color(0xff34a853)),
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                    child: Text(
                      "PAID",
                      style: AppStyle.style24
                          .copyWith(color: const Color(0xff34a853)),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: ((MediaQuery.sizeOf(context).height * .2 + 20) / 2 - 29),
            )
          ],
        ),
      ),
    );
  }
}
