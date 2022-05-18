import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guestay/room_list/room_list_navigator_cubit.dart';
import 'package:guestay/shared/constants/background.dart';

List<String> rooms = [
  'Economy single room',
  'Economy double room',
  'Standard single room',
  'Standard double room',
  'Premium single room',
  'Premium double room',
];

class RoomListView extends StatelessWidget {
  RoomListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black54,
          ),
        ),
      ),
      body: Container(
        decoration: backgroundDecoration,
        width: 1000,
        padding: EdgeInsets.fromLTRB(0, 80, 0, 0),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 500, child: roomBuilder),
            ],
          ),
        ),
      ),
    );
  }

  ListView roomBuilder = ListView.builder(
    physics: const ClampingScrollPhysics(),
    shrinkWrap: true,
    scrollDirection: Axis.vertical,
    itemCount: rooms.length,
    itemBuilder: (BuildContext context, int index) => Stack(
      alignment: Alignment.bottomCenter,
      children: [
        InkWell(
          onTap: () {
            Scaffold.of(context).showSnackBar(SnackBar(
              content: Text('You chose ${rooms.elementAt(index)}'),
            ));
            context
                .read<RoomListNavigatorCubit>()
                .confirmSelectedRoom(rooms.elementAt(index));
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            child: Center(
              child: Text(rooms.elementAt(index)),
            ),
          ),
        )
      ],
    ),
  );
}
