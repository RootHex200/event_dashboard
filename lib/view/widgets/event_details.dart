import 'package:flutter/material.dart';

class Event_details extends StatelessWidget {
  final String name_details;
  final String number_detail;
  
  Event_details({Key? key,required this.name_details,required this.number_detail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Text(
            name_details,
            style: TextStyle(color: Colors.white),
          ),
          Expanded(
              child: Divider(
            height: 1,
            thickness: 2,
          )),
          Text(
            number_detail,
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
