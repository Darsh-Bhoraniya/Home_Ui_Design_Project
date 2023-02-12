import 'package:flutter/material.dart';
import 'package:home_ui_design/Widgets/my_card.dart';

class CardCreate extends StatefulWidget {
  @override
  State<CardCreate> createState() => _CardCreateState();
}

class _CardCreateState extends State<CardCreate> {
  var imagelist = [
    "assets/image/Home1.png",
    'assets/image/homeimage2.png',
    "assets/image/Home1.jpeg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          mycustomcard(imagelist[0]),
          mycustomcard(imagelist[1]),
          mycustomcard(imagelist[2])
        ],
      ),
    );
  }

  Widget mycustomcard(String image) {
    return Padding(
      padding: EdgeInsets.all(25),
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
                    Image.asset(image, fit: BoxFit.fitWidth),
                    Text(
                      'Gujarat India',
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
                      "\$1,566,000",
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
                          ),Text("2100Squar")
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
    );
  }
}
