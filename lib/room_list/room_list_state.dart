import 'package:guestay/room_list/room_repository.dart';
import 'package:guestay/hotel_search/hotel_search_repository.dart';

class RoomListState {
  String? selectedRoom;
  double? amountToBePaid;
  bool? isPaid;
  PaymentType? type;

  RoomListState(
      {this.selectedRoom = '',
      this.amountToBePaid = 0,
      this.isPaid = false,
      this.type = PaymentType.UNKNOWN});
  RoomListState copyWith(
      {String? selectedRoom,
      double? amountToBePaid,
      bool? isPaid,
      PaymentType? type}) {
    return RoomListState(
        selectedRoom: selectedRoom ?? this.selectedRoom,
        amountToBePaid: amountToBePaid ?? this.amountToBePaid,
        isPaid: isPaid ?? this.isPaid,
        type: type ?? this.type);
  }
}
