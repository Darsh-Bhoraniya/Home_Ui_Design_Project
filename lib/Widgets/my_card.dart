import 'package:flutter/material.dart';

class MyCard extends StatefulWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  var MyList = [
    {
      "path": "assets/image/Home1.png",
      "imagetxt": "india, Gujarat",
      "rate": "1566,000",
      "bed": "3 BED",
      "bath": "2 Bath",
      "sqf": "2100 sqft"
    },
    {
      "path": "assets/image/Screeniconf1.png",
      "imagetxt": "india, Gujarat",
      "rate": "1566,000",
      "bed": "3 BED",
      "bath": "2 Bath",
      "sqf": "2100 sqft"
    },
    {
      "path": "assets/image/Screeniconf1.png",
      "imagetxt": "india, Gujarat",
      "rate": "1566,000",
      "bed": "3 BED",
      "bath": "2 Bath",
      "sqf": "2100 sqft"
    },
    {
      "path": "assets/image/Screeniconf1.png",
      "imagetxt": "india, Gujarat",
      "rate": "1566,000",
      "bed": "3 BED",
      "bath": "2 Bath",
      "sqf": "2100 sqft"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Card(
          child: Column(
            children: [
              Stack(
                // fit: StackFit.expand,
                children: [
                  Image.asset("assets/image/Home1.png",fit: BoxFit.cover,),
                  Positioned(
                    bottom: 6,
                    left: 15,
                    child: Container(
                      child: Row(
                        children: [
                          Icon(Icons.location_city_sharp),
                          Text(("Gujrat india"))
                        ],
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(26)),
                    ),
                  ),
                ],
              ),
              Text("\$ 1031313"),
              Row(
                children: [
                  carditem(icon: Icons.bed,filedstr: "abc", fizledstr: ''),
                  carditem(icon: Icons.car_rental, filedstr: 'abc', fizledstr: ''),
                  // carditem(icon: Icons.car_rental,filedstr: "abc"),
                ],
              )
            ],
          ),
        );
      },
      itemCount: 4,
    );
  }
}

Widget carditem({required IconData icon,required String fizledstr, required String filedstr})
{
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Icon(icon),
      // Text(filedstr)
    ],
  );
}

Widget mycustomcard({required String imageassets,required IconData iconofrow,required String strofrow,required String txtfiled,required})
{
  return Card(
    child: Column(
      children: [
        Stack(
        fit: StackFit.expand,
          children: [
            Image.asset("assets/image/Home1.png",fit: BoxFit.cover,),
            Positioned(
              bottom: 6,
              left: 15,
              child: Container(
                child: Row(
                  children: [
                    Icon(Icons.location_city_sharp),
                    Text(("Gujrat india"))
                  ],
                ),
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(26)),
              ),
            ),
          ],
        ),
        Text("\$ 1031313"),
        Row(
          children: [
            Image.asset("assets/image/Home1.png",fit: BoxFit.fill),
            // carditem(icon: Icons.car_rental,filedstr: 'wefw', fizledstr: ''),
            // carditem(icon: Icons.car_rental,filedstr: "Abcd", fizledstr: ''),
            carditem(icon: Icons.car_rental,fizledstr: 'abcde', filedstr: ''),
          ],
        )
      ],
    ),
  );
}
