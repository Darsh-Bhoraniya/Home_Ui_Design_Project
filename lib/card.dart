import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:home_ui_design/Home_ui.dart';
import 'package:home_ui_design/Widgets/my_card.dart';
import 'package:home_ui_design/detailscreen.dart';
import 'package:http/http.dart' as http;

class CardCreate extends StatefulWidget {
  @override
  State<CardCreate> createState() => _CardCreateState();
}

class _CardCreateState extends State<CardCreate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: mycustomcard(),
    );
  }

  Widget mycustomcard() {
    return FutureBuilder<List<HomeUi>>(
      builder: (context, snapshot) {
        if (snapshot.data != null && snapshot.hasData) {
          return ListView.builder(

            itemBuilder: (context, index) {
              return Container(
                  child: Padding(
                padding: EdgeInsets.all(25),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return DetailCard();
                        },
                      ),
                    );
                  },
                  child: Card(
                    elevation: 100,
                    shadowColor: Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Container(
                      height: 450,
                      child: Column(
                        children: [
                          Expanded(
                            flex: 5,
                            child: Stack(
                              children: [
                                Image.network(snapshot.data![index].imageUrl.toString(),
                                    fit: BoxFit.fitWidth),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.white38,
                                          elevation: 12,
                                          shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(10),
                                            ),
                                          ),
                                        ),
                                        onPressed: () {},
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Icon(Icons.location_on),
                                                Text(snapshot.data![index].city.toString(),)
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                              fit: StackFit.expand,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20, top: 10),
                            child: Row(
                              children: [
                                Text(
                                  snapshot.data![index].price.toString(),
                                  style: TextStyle(fontSize: 20),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                              child: Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Row(
                              children: [
                                Container(
                                  child: Expanded(
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.car_rental_sharp,
                                          color: Colors.blue,
                                        ),
                                        Text("3 Bed")
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.shower,
                                        color: Colors.pink,
                                      ),
                                      Text("2 Bath")
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.square_foot_rounded,
                                        color: Colors.orange,
                                      ),
                                      Text("2100Squar")
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ))
                        ],
                      ),
                    ),
                  ),
                ),
              ));
            },
            itemCount: snapshot.data!.length,
          );
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
      future: CallEntireapi(),
    );
  }
}

Future<List<HomeUi>> CallEntireapi() async {
  http.Response res = await http
      .get(Uri.parse('https://630ee9c4379256341883572e.mockapi.io/home_ui'));
  print("DATA::${res.body.toString()}");
  List<dynamic> map = jsonDecode(res.body.toString());
  List<HomeUi> list = [];
  for(int i=0;i<map.length;i++){
    list.add(HomeUi.fromJson(map[i]));
  }
  return list;
}
