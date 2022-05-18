import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guestay/hotel_search/hotel_search_repository.dart';
import 'package:guestay/room_list/room_repository.dart';

enum RoomListNavigatorState {
  defaultView,
  paymentChoiceView,
}

class RoomListNavigatorCubit extends Cubit<RoomListNavigatorState> {
  final HotelSearchRepository hotelSearchRepository;
  RoomListNavigatorCubit({required this.hotelSearchRepository})
      : super(RoomListNavigatorState.defaultView);

  void confirmSelectedRoom(String? room) {
    if (room == null) {
      return;
    }
    hotelSearchRepository.setSelectedRoom(room);
    showPaymentChoiceView();
  }

  void showDefaultView() => emit(RoomListNavigatorState.defaultView);
  void showPaymentChoiceView() =>
      emit(RoomListNavigatorState.paymentChoiceView);
}
