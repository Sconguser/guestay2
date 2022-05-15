import 'package:guestay/guest_picker/chosen_guests.dart';
import 'package:guestay/hotel_filters/hotel_filters.dart';

class HotelSearchRepository {
  String? destination;

  DateTime? startDate;
  DateTime? endDate;

  ChosenGuests? chosenGuests;
  HotelFilters? hotelFilters;

  void setChosenGuests(ChosenGuests chosenGuests) {
    this.chosenGuests = chosenGuests;
  }

  void setHotelFilters(HotelFilters hotelFilters) {
    this.hotelFilters = hotelFilters;
  }
}
