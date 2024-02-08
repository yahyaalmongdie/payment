import 'package:flutter/material.dart';
import 'package:payment/core/utils/app_asset.dart';
import 'package:payment/features/checkout/presentation/view/widget/payment_method_item.dart';
import 'package:payment/model/payment_method_model.dart';

class CustomListPaymentMethod extends StatefulWidget {
  const CustomListPaymentMethod({super.key});

  @override
  State<CustomListPaymentMethod> createState() => _PaymentDetailsViewBodyState();
}

const List<PaymentMethodModel> paymentMethodList = [
  PaymentMethodModel(image: Assets.imagesCard),
  PaymentMethodModel(image: Assets.imagesPaypall),
  PaymentMethodModel(image: Assets.imagesPay),
];

int currentIndex = 0;

class _PaymentDetailsViewBodyState extends State<CustomListPaymentMethod> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(
          2,
          (index) => GestureDetector(
                onTap: () {
                  currentIndex = index;
                  setState(() {
                    
                  });
                },
                child: PaymentDetailsMethodItem(
                  isActive: currentIndex ==index,
                  paymentMethodModel: paymentMethodList[index],
                ),
              )),
    );
  }
}

