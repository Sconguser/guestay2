import 'package:guestay/room_list/room_repository.dart';
import 'package:guestay/hotel_search/hotel_search_repository.dart';

abstract class RoomListEvent {}

class SelectedRoomChanged extends RoomListEvent {
  final String selectedRoom;

  SelectedRoomChanged({required this.selectedRoom});
}

class AmountToBePaidChanged extends RoomListEvent {
  double amountToBePaid;
  AmountToBePaidChanged({required this.amountToBePaid});
}

class IsPaidChanged extends RoomListEvent {
  bool isPaid;
  IsPaidChanged({required this.isPaid});
}

class PaymentTypeChanged extends RoomListEvent {
  PaymentType type;

  PaymentTypeChanged({required this.type});
}
