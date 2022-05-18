import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guestay/room_list/room_list_event.dart';
import 'room_list_state.dart';

class RoomListBloc extends Bloc<RoomListEvent, RoomListState> {
  RoomListBloc() : super(RoomListState()) {}
}
