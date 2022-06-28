import 'package:flutter/material.dart';
import 'dashboard.dart';
import 'model/plant.dart';

class DetailPage extends StatefulWidget {
  final Plant plant;
  const DetailPage({Key? key, required this.plant}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState(plant);
}

class _DetailPageState extends State<DetailPage> {
  Plant plant;
  _DetailPageState(this.plant);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: <Widget>[
        SizedBox(height: 30),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(left: 18, top: 20),
                  child: Text(plant.name,
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat'))),
              Column(children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(
                      right: 28,
                    ),
                    child: Text('AMOUNT',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[500],
                            fontWeight: FontWeight.bold,
                            fontFamily: 'CormorantGaramond'))),
                Padding(
                    padding: EdgeInsets.only(right: 28, top: 2),
                    child: Text('\$' + plant.price.toString(),
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat')))
              ])
            ]),
        SizedBox(height: 70),
        Center(child: Image.network(plant.thumb, width: 250)),
        SizedBox(height: 10),
        Center(
            child: Text('SIZE',
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold))),
        SizedBox(height: 20),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          SizedBox(width: 10),
          InkWell(
            onTap: () {
              setState(() {
                if (plant.price != plant.initial_price) {
                  plant.price = plant.initial_price;
                }
              });
              print('M');
            },
            child: Card(
              elevation: 4,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(35.0),
              ),
              child: Padding(
                  padding:
                      EdgeInsets.only(top: 17, left: 15, right: 15, bottom: 17),
                  child: Text(
                    ' M ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontFamily: 'Montserrat'),
                  )),
            ),
          ),
          SizedBox(width: 10),
          InkWell(
            onTap: () {
              setState(() {
                if (plant.price == plant.initial_price) {
                  plant.price = plant.price * 2;
                }
              });
              print('L');
            },
            child: Card(
              elevation: 4,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(35.0),
              ),
              child: Padding(
                  padding:
                      EdgeInsets.only(top: 17, left: 15, right: 15, bottom: 17),
                  child: Text(' L ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat'))),
            ),
          ),
        ]),
        SizedBox(height: 40),
        Center(
            child: Padding(
                padding: EdgeInsets.all(15),
                child: Text(plant.description,
                    style: TextStyle(
                        color: Colors.grey[500], fontFamily: 'Montserrat'),
                    textAlign: TextAlign.center)))
      ]),
    ));
  }
}
// class DetailPage extends StatelessWidget {
//   final Plant plant;
//   const DetailPage({Key? key, required this.plant}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: SingleChildScrollView(
//       child: Column(children: <Widget>[
//         SizedBox(height: 30),
//         Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: <Widget>[
//               Padding(
//                   padding: EdgeInsets.only(left: 18, top: 20),
//                   child: Text(plant.name,
//                       style: TextStyle(
//                           fontSize: 22,
//                           fontWeight: FontWeight.bold,
//                           fontFamily: 'Montserrat'))),
//               Column(children: <Widget>[
//                 Padding(
//                     padding: EdgeInsets.only(
//                       right: 28,
//                     ),
//                     child: Text('AMOUNT',
//                         style: TextStyle(
//                             fontSize: 12,
//                             color: Colors.grey[500],
//                             fontWeight: FontWeight.bold,
//                             fontFamily: 'CormorantGaramond'))),
//                 Padding(
//                     padding: EdgeInsets.only(right: 28, top: 2),
//                     child: Text('\$' + plant.price.toString(),
//                         style: TextStyle(
//                             fontSize: 18,
//                             color: Colors.black87,
//                             fontWeight: FontWeight.bold,
//                             fontFamily: 'Montserrat')))
//               ])
//             ]),
//         SizedBox(height: 70),
//         Center(child: Image.network(plant.thumb, width: 250)),
//         SizedBox(height: 10),
//         Center(
//             child: Text('SIZE',
//                 style: TextStyle(
//                     fontSize: 14,
//                     color: Colors.black87,
//                     fontWeight: FontWeight.bold))),
//         SizedBox(height: 20),
//         Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
//           InkWell(
//             onTap: () {},
//             child: Card(
//               elevation: 2,
//               color: Colors.grey[100],
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(35.0),
//               ),
//               child: Padding(
//                   padding: EdgeInsets.all(15),
//                   child: Text(' S ', style: TextStyle(color: Colors.grey))),
//             ),
//           ),
//           SizedBox(width: 10),
//           InkWell(
//             onTap: () {},
//             child: Card(
//               elevation: 4,
//               color: Colors.white,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(35.0),
//               ),
//               child: Padding(
//                   padding:
//                       EdgeInsets.only(top: 17, left: 15, right: 15, bottom: 17),
//                   child: Text(
//                     ' M ',
//                     style: TextStyle(
//                         fontWeight: FontWeight.bold, fontFamily: 'Montserrat'),
//                   )),
//             ),
//           ),
//           SizedBox(width: 10),
//           InkWell(
//             onTap: () {},
//             child: Card(
//               elevation: 2,
//               color: Colors.grey[100],
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(35.0),
//               ),
//               child: Padding(
//                   padding: EdgeInsets.all(15),
//                   child: Text(' L ', style: TextStyle(color: Colors.grey))),
//             ),
//           ),
//         ]),
//         SizedBox(height: 40),
//         Center(
//             child: Padding(
//                 padding: EdgeInsets.all(15),
//                 child: Text(plant.description,
//                     style: TextStyle(
//                         color: Colors.grey[500], fontFamily: 'Montserrat'),
//                     textAlign: TextAlign.center)))
//       ]),
//     ));
//   }
// }
