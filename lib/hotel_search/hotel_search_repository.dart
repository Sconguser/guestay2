import 'package:guestay/guest_picker/chosen_guests.dart';
import 'package:guestay/hotel_filters/hotel_filters.dart';

enum PaymentType { CARD, CASH, UNKNOWN }

class HotelSearchRepository {
  String? destination;

  DateTime? startDate;
  DateTime? endDate;

  ChosenGuests? chosenGuests;
  HotelFilters? hotelFilters;

  String? selectedHotel;

  String? selectedRoom;

  double? amountToBePaid;
  bool? isPaid;
  PaymentType? paymentType;

  void setChosenGuests(ChosenGuests chosenGuests) {
    this.chosenGuests = chosenGuests;
  }

  void setHotelFilters(HotelFilters hotelFilters) {
    this.hotelFilters = hotelFilters;
  }

  void setSelectedHotel(String selectedHotel) {
    this.selectedHotel = selectedHotel;
  }

  void setSelectedRoom(String selectedRoom) {
    this.selectedRoom = selectedRoom;
  }

  void setSelectedPaymentType(PaymentType paymentType) {
    this.paymentType = paymentType;
  }
}
