import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guestay/hotel_search/hotel_search_repository.dart';
import 'package:guestay/shared/constants/background.dart';

import '../shared/constants/colours.dart';
import '../shared/divider.dart';

final List<String> hotels = [
  'Bohema Boutique Hotel & Spa',
  'Campanile Bydgoszcz',
  'Mariott Bydgoszcz',
  'Hilton Bydgoszcz',
  'Hotel a',
  'Hotel b',
  'Hotel c',
  'Hotel d',
];

class HotelListView extends StatelessWidget {
  HotelListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        decoration: backgroundDecoration,
        width: 1000,
        padding: EdgeInsets.fromLTRB(0, 80, 0, 0),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _chosenOptionsTile(context),
              SizedBox(height: 20),
              SizedBox(height: 600, child: hotelBuilder),
            ],
          ),
        ),
      ),
    );
  }

  ListView hotelBuilder = ListView.builder(
    physics: ClampingScrollPhysics(),
    shrinkWrap: true,
    scrollDirection: Axis.vertical,
    itemCount: hotels.length,
    itemBuilder: (BuildContext context, int index) =>
        Stack(alignment: Alignment.bottomCenter, children: [
      InkWell(
        onTap: () {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text('You chose ${hotels.elementAt(index)}'),
          ));
          // context.read<HotelSearchRepository>().destination =
          //     destinations.elementAt(index);
          // context.read<HomeNavigatorCubit>().showHotelSearch();
        },
        child: Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            child: Center(
                child: Image.asset(
              'assets/images/${hotels.elementAt(index).toLowerCase()}.jpg',
              // width: 150,
              // height: 300,
            ))),
      ),
      ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          width: 100,
          height: 30,
          child: Material(
            elevation: 30,
            child: Center(
              child: Text(
                hotels.elementAt(index),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ),
      ),
    ]),
  );

  Widget _chosenOptionsTile(BuildContext context) {
    HotelSearchRepository hotelSearchRepository =
        context.read<HotelSearchRepository>();
    return Container(
      color: primaryColor,
      width: 500,
      height: 50,
      child: Column(
        children: [
          Text(hotelSearchRepository.destination != null
              ? hotelSearchRepository.destination!
              : 'Error'),
          textFieldDivider,
          Text(formatDate(hotelSearchRepository))
        ],
      ),
    );
  }

  String formatDate(HotelSearchRepository hotelSearchRepository) {
    if (hotelSearchRepository == null ||
        hotelSearchRepository.startDate == null ||
        hotelSearchRepository.endDate == null) {
      return 'No dates were chosen';
    }

    return '${hotelSearchRepository.startDate?.day} ${formatMonthNumberToString(hotelSearchRepository.startDate?.month)}'
        ' - ${hotelSearchRepository.endDate?.day} ${formatMonthNumberToString(hotelSearchRepository.endDate?.month)}';
  }

  String formatMonthNumberToString(int? number) {
    switch (number) {
      case 1:
        return 'Jan';
      case 2:
        return 'Feb';
      case 3:
        return 'Mar';
      case 4:
        return 'Apr';
      case 5:
        return 'May';
      case 6:
        return 'Jun';
      case 7:
        return 'Jul';
      case 8:
        return 'Aug';
      case 9:
        return 'Sep';
      case 10:
        return 'Oct';
      case 11:
        return 'Nov';
      case 12:
        return 'Dec';
      default:
        return 'Error';
    }
  }
}
