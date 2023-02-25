import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class DetailCard extends StatefulWidget {
  @override
  State<DetailCard> createState() => _DetailCardState();
}

class _DetailCardState extends State<DetailCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: Container(
                  child: Image.asset(
                    'assets/image/homeimage3.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(child: Container())
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      color: Colors.black,
                      Icons.search,
                      size: 25,
                    ),
                    Icon(
                      Icons.dehaze_sharp,
                      size: 25,
                    )
                  ],
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(),
              Container(
                color: Colors.white,
                margin: EdgeInsets.only(top: 150),
                child: Column(
                  children: [
                    Image.asset('assets/image/map.png'),
                    Container(
                      child: Text(
                        '\$1 556 000\n123 Main sl India',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 30,
                          child: Icon(Icons.map),
                        ),
                      ),
                      Container(
                        child: Text('Map'),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 30,
                          child: Icon(
                            Icons.streetview,
                            color: Colors.purple,
                          ),
                        ),
                      ),
                      Container(
                        child: Text('Strret'),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 30,
                          child: Icon(
                            Icons.square_outlined,
                            color: Colors.orangeAccent,
                          ),
                        ),
                      ),
                      Container(child: Text('Crime'))
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 30,
                          child: Icon(
                            Icons.more_horiz_sharp,
                            color: Colors.black26,
                          ),
                        ),
                      ),
                      Container(
                        child: Text('More'),
                      )
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 50),
                    child: Text(
                      "Property details",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.car_repair_rounded),
                            Text('3 Bed')
                          ],
                        ),
                        Row(
                          children: [Icon(Icons.shower), Text('2 Bath')],
                        ),
                        Row(
                          children: [
                            Icon(Icons.square_foot_rounded),
                            Text("2100square")
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Text(
                    'Real estate is a fiercely competitive business. The number of members in the National Association of Realtors (NAR)   as steadily increased since 2012, reaching 1.56 million in 2021, an all-time high. This growth in numbers has tracked right alongside an uptick in the volume of home sales, which has continued climbing since the financial crisis of'
                    '2008during the pandemic, over three million licensed realtors in the United States competed to sell',
                    style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                  ),
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    // height: 50,
                    // width: 300,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white60,
                        elevation: 12,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(50),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'call',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    // height: 50,
                    // width: 300,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        elevation: 12,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(50),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Email',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              )
            ],
          )
        ],
        fit: StackFit.expand,
      ),
    );
  }
}
