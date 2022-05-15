import 'package:flutter/material.dart';

class HotelFilters {
  bool? wifi;
  bool? freeParking;
  bool? freeCancellation;
  bool? kitchen;
  bool? washingMachine;
  bool? breakfast;
  bool? entirePlace;
  bool? privateRoom;
  bool? sharedRoom;
  bool? hotelRoom;
  int? minPrice;
  int? maxPrice;

  HotelFilters({
    this.wifi,
    this.freeParking,
    this.freeCancellation,
    this.kitchen,
    this.washingMachine,
    this.breakfast,
    this.entirePlace,
    this.privateRoom,
    this.sharedRoom,
    this.hotelRoom,
    this.minPrice,
    this.maxPrice,
  });
  void setChosenFilters(
    bool? wifi,
    bool? freeParking,
    bool? freeCancellation,
    bool? kitchen,
    bool? washingMachine,
    bool? breakfast,
    bool? entirePlace,
    bool? privateRoom,
    bool? sharedRoom,
    bool? hotelRoom,
    int? minPrice,
    int? maxPrice,
  ) {
    this.wifi = wifi;
    this.freeParking = freeParking;
    this.freeCancellation = freeCancellation;
    this.kitchen = kitchen;
    this.washingMachine = washingMachine;
    this.breakfast = breakfast;
    this.entirePlace = entirePlace;
    this.privateRoom = privateRoom;
    this.sharedRoom = sharedRoom;
    this.hotelRoom = hotelRoom;
    this.minPrice = minPrice;
    this.maxPrice = maxPrice;
  }
}
