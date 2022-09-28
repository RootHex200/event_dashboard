


import 'package:event_dashboard/view/bodypart1/firstpart.dart';
import 'package:event_dashboard/view/bodypart2/secondpart.dart';
import 'package:event_dashboard/view/bodypart3/thirdpart.dart';
import 'package:event_dashboard/view/widgets/colors.dart';
import 'package:flutter/material.dart';

class Home_page extends StatelessWidget {
  const Home_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        child: Row(
        children: <Widget>[
          Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10)
            ),
            child: NavigationRail(
              backgroundColor: Appcolors.balck_bg,
              selectedIndex: 0,
              minWidth: 20.0,
             
              leading: Icon(Icons.menu,color: Appcolors.yellow,),
              
              onDestinationSelected: (int index) {
              },
              labelType: NavigationRailLabelType.selected,
              destinations: [
                const NavigationRailDestination(
                  icon: Icon(Icons.home,color: Color(0xFFF09011),),
                  
                  label: Text(""),
                  padding: EdgeInsets.only(top: 50)
                ),
                const NavigationRailDestination(
                  icon: Icon(Icons.calendar_month,color: Colors.white,size: 25),
                  selectedIcon: Icon(Icons.book),
                  label: Text('Second'),
                ),
                
                const NavigationRailDestination(
                  icon: Icon(Icons.note,color: Colors.white,size: 25),
                  selectedIcon: Icon(Icons.star),
                  label: Text('Third'),
                ),
                const NavigationRailDestination(icon: Icon(Icons.settings,color: Colors.white,size: 25), label:Text(""),
                
                ),
                const NavigationRailDestination(
                  padding: EdgeInsets.only(top: 100),
                  icon: Icon(Icons.add_rounded,color: Colors.white,size: 30), label:Text(""),
                
                ),
              ],
            ),
          ),
          VerticalDivider(thickness: 1, width: 1),
          // This is the main content.
          Expanded(
            flex: 3,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: First_part()
                ),
                VerticalDivider(width: 1,thickness: 3,) ,   
                Expanded(
                  flex: 1,
                  child: Second_part()
                ),
                VerticalDivider(width: 1,thickness: 3,) ,   
                                  Expanded(
                  flex: 1,
                  child: Third_part(),
                ),
              ],
            ),
          )
        ],
          ),
      ),
    );
  }
}