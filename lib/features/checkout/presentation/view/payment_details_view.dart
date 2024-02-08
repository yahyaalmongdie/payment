import 'package:flutter/material.dart';
import 'package:payment/core/widget/custom_appbar.dart';
import 'package:payment/features/checkout/presentation/view/widget/payment_details_view_body.dart';

class PaymentDetailsView extends StatelessWidget {
  const PaymentDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: "Payment Details"),
      body: const PaymentDetailsViewBody(),
    );
  }
}
