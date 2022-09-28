import 'package:event_dashboard/view/widgets/colors.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

class First_part extends StatelessWidget {
  const First_part({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Appcolors.opacity_bg,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              child: Text(
                "Calendar",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.white),
              )),
          TableCalendar(
              headerStyle: HeaderStyle(
                  titleCentered: true,
                  titleTextStyle: TextStyle(color: Colors.white),
                  formatButtonVisible: false),
              calendarBuilders: CalendarBuilders(dowBuilder: (context, day) {
                if (day.weekday == DateTime.sunday) {
                  final text = DateFormat.E().format(day);
                  return Center(
                    child: Text(
                      text,
                      style: TextStyle(color: Colors.white),
                    ),
                  );
                }
              }),
              focusedDay: DateTime.now(),
              firstDay: DateTime.utc(1990),
              lastDay: DateTime.utc(2050)),
          Divider(
            height: 3,
            thickness: 2,
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Text(
                  "News & Bolgs",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Expanded(child: Container()),
                Text(
                  "see More",
                  style: TextStyle(color: Colors.yellow, fontSize: 15),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
              child: ListView.builder(

                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 80,
                      
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 3,horizontal: 20),
                        child: Row(
                          children: [
                            Container(
                              height: 65,
                              width: 90,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(7),
                                image: DecorationImage(image: AssetImage('assets/images/images.jpg',),fit: BoxFit.cover)
                              ),
                            ),
                            SizedBox(width: 20,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Supercoins drivers,temons',style: TextStyle(color: Colors.white,fontSize: 15),),
                                Text('Supercoins drivers,temons',style: TextStyle(color: Colors.white,fontSize: 15),),
                                Text('Supercoins d',style: TextStyle(color: Colors.grey,fontSize: 15),),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  })),
        ],
      ),
    );
  }
}
