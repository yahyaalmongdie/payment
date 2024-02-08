import 'package:flutter/material.dart';
import 'package:payment/core/utils/app_asset.dart';
import 'package:payment/core/widget/custom_button.dart';
import 'package:payment/features/checkout/presentation/view/widget/custom_payment_list_method.dart';
import 'package:payment/features/checkout/presentation/view/widget/order_info_item.dart';
import 'package:payment/features/checkout/presentation/view/widget/total_price.dart';

class MyCardBodyViewBody extends StatelessWidget {
  const MyCardBodyViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          const SizedBox(
            height: 18,
          ),
          Expanded(child: Image.asset(Assets.imagesMyBasket)),
          const SizedBox(
            height: 25,
          ),
          const OrderInfoItem(
            title: "Order Subtotal",
            value: r"$34.78",
          ),
          const SizedBox(
            height: 3,
          ),
          const OrderInfoItem(
            title: "Discount",
            value: r"$0.0",
          ),
          const SizedBox(
            height: 3,
          ),
          const OrderInfoItem(
            title: "shopping",
            value: r"$8.0",
          ),
          const Divider(
            height: 34,
            thickness: 2,
            color: Color(0xffC7C7C7),
          ),
          const TotalPrice(
            title: "Total",
            value: r"$50.97",
          ),
          const SizedBox(
            height: 16,
          ),
          CustomButton(
            textBtn: "Complete Payment",
            onTap: () {
              showModalBottomSheet(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                  context: context,
                  builder: (context) {
                    return const PaymentMethodsBottomSheet();
                  });
              // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const PaymentDetailsView()));
            },
          ),
          const SizedBox(
            height: 12,
          ),
        ],
      ),
    );
  }
}

class PaymentMethodsBottomSheet extends StatelessWidget {
  const PaymentMethodsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 16,),
          const CustomListPaymentMethod(),
                    const SizedBox(
            height: 32,
          ),

          CustomButton(textBtn: "continue",onTap: (){},)
        ],
      ),
    );
  }
}
