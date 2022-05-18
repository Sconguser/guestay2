import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guestay/booking_confirmation/booking_confirmation_navigator_cubit.dart';
import 'package:guestay/hotel_search/hotel_search_repository.dart';
import 'package:guestay/shared/constants/background.dart';

import '../shared/utils.dart';

class BookingConfirmationView extends StatelessWidget {
  const BookingConfirmationView({Key? key}) : super(key: key);

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
        decoration: backgroundDecoration,
        padding: EdgeInsets.fromLTRB(0, 80, 0, 0),
        child: Column(
          children: [
            chosenRoomTile(context),
            chosenDatesTile(context),
            paymentSummaryTile(context),
            paymentTypeTile(context),
            confirmBookingButton(context),
          ],
        ),
      ),
    );
  }

  Widget chosenRoomTile(BuildContext context) {
    return Text(context.read<HotelSearchRepository>().selectedRoom!);
  }

  Widget chosenDatesTile(BuildContext context) {
    HotelSearchRepository hotelSearchRepository =
        context.read<HotelSearchRepository>();
    return Column(
      children: [
        Text(formatDate(hotelSearchRepository)),
      ],
    );
  }

  Widget paymentSummaryTile(BuildContext context) {
    return Text('Payment summary will be here');
  }

  Widget paymentTypeTile(BuildContext context) {
    HotelSearchRepository hotelSearchRepository =
        context.read<HotelSearchRepository>();
    return Text(hotelSearchRepository.paymentType.toString());
  }

  Widget confirmBookingButton(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          _confirmBookingButtonPressed(context);
        },
        child: Text('Confirm booking'));
  }

  void _confirmBookingButtonPressed(BuildContext context) {
    BookingConfirmationNavigatorCubit _cubit =
        context.read<BookingConfirmationNavigatorCubit>();
    _cubit.confirmBooking();
    _cubit.showCongratulations();
  }
}
