import 'package:event_dashboard/view/widgets/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class Second_part extends HookWidget {
  const Second_part({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var value = useState(0);
    return Container(
      color: Appcolors.balck_bg,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              height: 100,
              color: Appcolors.opacity_bg,
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Center(
                      child: CupertinoSearchTextField(
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )))),
          Divider(height: 1,thickness: 2,),
          SizedBox(
            height: 20,
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "September,16",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 220,
                  child: ListView.builder(
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            value.value = index;
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 15),
                              height: 90,
                              decoration: BoxDecoration(
                                color:value.value==index?Colors.blue: Appcolors.opacity_bg,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Container(
                                child: Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text("12:00",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20,
                                                color: Colors.white)),
                                        Text("11:30",
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.white))
                                      ],
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    VerticalDivider(
                                      width: 1,
                                      thickness: 2,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text("Moto Track Day",
                                            style: TextStyle(
                                                fontSize: 19,
                                                color: Colors.white)),
                                        Text("All Motorbikes",
                                            style: TextStyle(
                                                fontSize: 11,
                                                color: Colors.white))
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "September,17",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 380,
                  child: ListView.builder(
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 15),
                            height: 90,
                            decoration: BoxDecoration(
                              color: Appcolors.opacity_bg,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Container(
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("12:00",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                              color: Colors.white)),
                                      Text("11:30",
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.white))
                                    ],
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  VerticalDivider(
                                    width: 1,
                                    thickness: 2,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Moto Track Day",
                                          style: TextStyle(
                                              fontSize: 19,
                                              color: Colors.white)),
                                      Text("All Motorbikes",
                                          style: TextStyle(
                                              fontSize: 11,
                                              color: Colors.white))
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
