import 'package:flutter/material.dart';
import 'package:payment/core/widget/custom_button.dart';
import 'package:payment/features/checkout/presentation/view/thank_you_view.dart';
import 'package:payment/features/checkout/presentation/view/widget/custom_credit_card.dart';
import 'package:payment/features/checkout/presentation/view/widget/custom_payment_list_method.dart';

class PaymentDetailsViewBody extends StatefulWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  State<PaymentDetailsViewBody> createState() => _PaymentDetailsViewBodyState();
}

class _PaymentDetailsViewBodyState extends State<PaymentDetailsViewBody> {
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode? autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(child: CustomListPaymentMethod()),
        SliverToBoxAdapter(
            child: CustomCreditCard(
          formKey: formKey,
          autovalidateMode: autovalidateMode,
        )),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 12, left: 16, right: 16),
              child: CustomButton(
                textBtn: "play",
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                  } else {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ThankYouView()));
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              ),
            ),
          ),
        )
      ],
    );
  }
}
