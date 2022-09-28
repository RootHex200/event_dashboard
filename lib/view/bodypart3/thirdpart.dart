import 'dart:ui';

import 'package:carousel_pro_nullsafety/carousel_pro_nullsafety.dart';
import 'package:event_dashboard/view/widgets/colors.dart';
import 'package:event_dashboard/view/widgets/event_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

List image_data = [
  CupertinoIcons.mail_solid,
  Icons.paste_sharp,
  Icons.notifications,
  Icons.more_horiz,
  CupertinoIcons.profile_circled
];

class Third_part extends HookWidget {
  const Third_part({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var value = useState(0);
    return Container(
      color: Appcolors.opacity_bg,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              height: 100,
              color: Appcolors.opacity_bg,
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: List.generate(5, (index) {
                        return InkWell(
                          onTap: () {
                            value.value = index;
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    borderRadius: image_data[index] ==
                                            CupertinoIcons.profile_circled
                                        ? BorderRadius.circular(50)
                                        : BorderRadius.circular(5),
                                    color: value.value == index
                                        ? Appcolors.yellow
                                        : Appcolors.search_color),
                                child: Icon(
                                  image_data[index],
                                  color: Colors.white,
                                )),
                          ),
                        );
                      })))),
          Divider(
            height: 1,
            thickness: 2,
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 20,
              width: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.blue,
              ),
              child: Center(
                  child: Text(
                "Sport Cars 300+",
                style: TextStyle(color: Colors.white),
              )),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Track Night Premier Event",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              )),
          SizedBox(
            height: 15,
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the",
                style: TextStyle(color: Colors.grey, fontSize: 15),
                maxLines: 3,
              )),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
              height: 150,
              width: 330,
              child: Center(
                child: Carousel(
                  overlayShadow: false,
                  boxFit: BoxFit.cover,
                  dotSize: 5,
                  images: [
                    Image(image: AssetImage("assets/images/images.jpg")),
                    Image(
                      image: AssetImage("assets/images/car2.jpg"),
                    ),
                    Image(
                      image: AssetImage("assets/images/car3.jpg"),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Event_details(
              name_details: "Total time  ", number_detail: "  2:15:00"),
          Event_details(name_details: "Starts  ", number_detail: "  6"),
          Event_details(name_details: "Rings  ", number_detail: "  24"),
          Event_details(name_details: "Drivers  ", number_detail: "  2"),
          SizedBox(height: 25,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Container(
                  height: 40,
                  width: 230,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.blue
                  ),
                  child: Center(child: Text("Buy Ticket",style: TextStyle(color: Colors.white),)),
                ),
                Expanded(child: Container()),
                              Container(
                  height: 40,
                  width:50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.blue
                  ),
                  child: Center(child: Icon(Icons.bookmark,color: Colors.white,)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
//AssetImage("assets/images/"+image_data[index])