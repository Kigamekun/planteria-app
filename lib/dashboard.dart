import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:motion_tab_bar_v2/motion-tab-bar.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'login-page.dart';
import 'detail-page.dart';
import 'cart.dart';
import 'model/plant.dart';
import 'dart:core';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List plants = getPlant();
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Container(
              color: Color(0XFFE5EFC1),
              height: double.infinity,
              width: double.infinity,
            ),
            // Image.network(
            //   "https://plainbackground.com/download.php?imagename=eff5d9.png",
            //   fit: BoxFit.cover,
            //   height: double.infinity,
            //   width: double.infinity,
            //   scale: 1,
            // ),
            SafeArea(
              child: Center(
                child: GlassmorphicContainer(
                    width: double.infinity,
                    height: double.infinity,
                    borderRadius: 0,
                    blur: 50,
                    alignment: Alignment.bottomCenter,
                    border: 0,
                    linearGradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xFFffffff).withOpacity(0.1),
                          Color(0xFFFFFFFF).withOpacity(0.05),
                        ],
                        stops: [
                          0.1,
                          1,
                        ]),
                    borderGradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFFffffff).withOpacity(0.5),
                        Color((0xFFFFFFFF)).withOpacity(0.5),
                      ],
                    ),
                    child: null),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(10),
              height: double.infinity,
              // color: Colors.green,
              child: Row(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            child: ClipOval(
                              child: SizedBox.fromSize(
                                size: Size.fromRadius(48), // Image radius
                                child: Image.network(
                                    'https://ih1.redbubble.net/image.1388146584.8540/st,small,507x507-pad,600x600,f8f8f8.jpg',
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                          Container(
                              padding: EdgeInsets.only(left: 10),
                              child: Text('Rimuru',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22))),
                        ],
                      )
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [],
                  ),
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 100),
                child: ListView.builder(
                    itemCount: plants.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 100,
                        width: 350,
                        margin: EdgeInsets.only(bottom: 5),
                        child: Card(
                          elevation: 5,
                          child: Row(
                              // mainAxisAlignment:
                              // MainAxisAlignment.spaceBetween,
                              children: [
                                Column(children: [
                                  Expanded(
                                    // Image radius
                                    child: Image.network(
                                      plants[index].thumb.toString(),
                                      fit: BoxFit.cover,
                                      width: 100,
                                    ),
                                  ),
                                ]),
                                Container(
                                  margin: EdgeInsets.only(left: 10, top: 10),
                                  child: Column(
                                    children: [
                                      TextButton(
                                          style: ButtonStyle(
                                            foregroundColor:
                                                MaterialStateProperty.all<
                                                    Color>(Colors.blue),
                                            overlayColor: MaterialStateProperty
                                                .resolveWith<Color?>(
                                              (Set<MaterialState> states) {
                                                if (states.contains(
                                                    MaterialState.hovered))
                                                  return Colors.blue
                                                      .withOpacity(0.04);
                                                if (states.contains(
                                                        MaterialState
                                                            .focused) ||
                                                    states.contains(
                                                        MaterialState.pressed))
                                                  return Colors.blue
                                                      .withOpacity(0.12);
                                                return null; // Defer to the widget's default.
                                              },
                                            ),
                                          ),
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      DetailPage(
                                                          plant:
                                                              plants[index])),
                                            );
                                          },
                                          child: Text(
                                              plants[index].name.toString(),
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 22))),
                                      Text(plants[index].shortDesc.toString(),
                                          overflow: TextOverflow.clip,
                                          maxLines: 1,
                                          softWrap: false,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 10)),
                                    ],
                                  ),
                                )
                              ]),
                          clipBehavior: Clip.antiAlias,
                        ),
                      );
                    }))
          ],
        ),
      ),
      bottomNavigationBar: MotionTabBar(
        labels: ["List", "Home", "Back"],
        initialSelectedTab: "Home",
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
    );
  }
}
