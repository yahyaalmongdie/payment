import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payment/model/payment_method_model.dart';
class PaymentDetailsMethodItem extends StatelessWidget {
  const PaymentDetailsMethodItem({
    super.key,  this.isActive=false, required this.paymentMethodModel,
  });
  final bool isActive;
  final PaymentMethodModel paymentMethodModel;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: 103,
      height: 62,
      decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
              side:  BorderSide(width: 1.50, color:isActive? const Color(0xff34a853): Colors.grey)),
          shadows:  [
            BoxShadow(
                color: isActive? const Color(0xff34a853): Colors.grey,
                blurRadius: 4,
                offset: const Offset(0, 0),
                spreadRadius: 0)
          ]),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: SvgPicture.asset(

           paymentMethodModel.image,
            height: 24,
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
    );
  }
}
