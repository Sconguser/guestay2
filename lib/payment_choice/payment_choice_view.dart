import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guestay/payment_choice/payment_choice_navigator_cubit.dart';
import 'package:guestay/shared/constants/background.dart';

import '../hotel_search/hotel_search_repository.dart';

class PaymentChoiceView extends StatelessWidget {
  const PaymentChoiceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black54,
          ),
        ),
      ),
      body: Container(
        width: 1000,
        padding: EdgeInsets.fromLTRB(0, 80, 0, 0),
        decoration: backgroundDecoration,
        child: Column(
          children: [
            cardButton(context),
            SizedBox(height: 30),
            paymentAtHotelButton(context),
          ],
        ),
      ),
    );
  }

  Widget cardButton(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          _paymentButtonPressed(context, PaymentType.CARD);
        },
        child: Text('Card'));
  }

  Widget paymentAtHotelButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        _paymentButtonPressed(context, PaymentType.CASH);
      },
      child: Text('Pay at the hotel'),
    );
  }

  void _paymentButtonPressed(BuildContext context, PaymentType paymentType) {
    context
        .read<PaymentChoiceNavigatorCubit>()
        .confirmChosenPaymentType(paymentType);
  }
}
