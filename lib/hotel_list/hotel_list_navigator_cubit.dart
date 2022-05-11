import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guestay/hotel_search/hotel_search_repository.dart';

enum HotelListNavigatorState {
  defaultView,
}

class HotelListNavigatorCubit extends Cubit<HotelListNavigatorState> {
  final HotelSearchRepository hotelSearchRepository;
  HotelListNavigatorCubit({required this.hotelSearchRepository})
      : super(HotelListNavigatorState.defaultView);
  void showDefaultView() => emit(HotelListNavigatorState.defaultView);
}
