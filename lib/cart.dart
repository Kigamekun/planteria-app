import 'model/plant.dart';
import 'package:flutter/material.dart';
import 'detail-page.dart';
import 'package:motion_tab_bar_v2/motion-tab-bar.dart';
import 'login-page.dart';
import 'detail-page.dart';
import 'dashboard.dart';
import 'cart.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final List plants = getPlant();
    ListTile makeListTile(Plant plant) => ListTile(
          contentPadding:
              EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          leading: Container(
            padding: EdgeInsets.only(right: 12.0),
            decoration: new BoxDecoration(
                border: new Border(
                    right: new BorderSide(width: 1.0, color: Colors.black))),
            child: Icon(Icons.autorenew, color: Colors.black),
          ),
          title: Text(
            plant.name,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

          subtitle: Row(
            children: <Widget>[
              Expanded(
                flex: 4,
                child: Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text(plant.price.toString(),
                        style: TextStyle(color: Colors.black))),
              )
            ],
          ),
          trailing:
              Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailPage(
                          plant: plant,
                        )));
          },
        );

    Card makeCard(Plant plant) => Card(
          elevation: 8.0,
          margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
          child: Container(
            decoration: BoxDecoration(color: Colors.white),
            child: makeListTile(plant),
          ),
        );

    final makeBody = Container(
      // decoration: BoxDecoration(color: Color.fromRGBO(58, 66, 86, 1.0)),
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: plants.length,
        itemBuilder: (BuildContext context, int index) {
          return makeCard(plants[index]);
        },
      ),
    );

    return Scaffold(
      backgroundColor: Color(0XFFE5EFC1),
      // appBar: topAppBar,
      body: makeBody,
      bottomNavigationBar: MotionTabBar(
        labels: ["List", "Home", "Back"],
        initialSelectedTab: "List",
        tabIconColor: Colors.blue,
        tabSelectedColor: Colors.blue,
        onTabItemSelected: (int value) {
          print(value);
          if (value == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Cart()),
            );
          } else if (value == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Dashboard()),
            );
          } else {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const LoginPage()),
            );
          }
        },
        icons: [Icons.list, Icons.home, Icons.arrow_back],
        textStyle: TextStyle(color: Colors.blue),
      ),
      // bottomNavigationBar: makeBottom,
    );
  }
}
