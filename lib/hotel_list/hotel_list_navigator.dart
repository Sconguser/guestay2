import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../hotel_search/hotel_search_repository.dart';
import 'hotel_list_navigator_cubit.dart';
import 'hotel_list_view.dart';

class HotelListNavigator extends StatelessWidget {
  const HotelListNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HotelSearchRepository hotelSearchRepository =
        context.read<HotelSearchRepository>();
    return BlocProvider(
      create: (context) =>
          HotelListNavigatorCubit(hotelSearchRepository: hotelSearchRepository),
      child: BlocBuilder<HotelListNavigatorCubit, HotelListNavigatorState>(
        builder: (context, state) {
          return Navigator(
            pages: [
              MaterialPage(child: HotelListView()),
            ],
            onPopPage: (route, result) {
              context.read<HotelListNavigatorCubit>().showDefaultView();
              return route.didPop(result);
            },
          );
        },
      ),
    );
  }
}
