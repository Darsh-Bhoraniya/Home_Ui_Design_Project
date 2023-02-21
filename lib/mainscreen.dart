import 'package:flutter/material.dart';
import 'package:home_ui_design/secondscreen.dart';

class Mainscreen extends StatefulWidget {
  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255,1),
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Container(
                child: Text(
                  'Redefining Your Home \nSearch Experiance',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30, fontFamily: "mukta",fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ),
          Expanded(
            child: Image.asset(
              'assets/image/Firsticon.png',
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Column(
              children: [
                InkWell(
                  child: Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 50),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size(327, 50),
                            elevation: 10,
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50)))),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder:(context) {
                            return SecondScreen();
                          }, ));
                        },
                        child: Text(
                          'Create New Account',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white60,
                        minimumSize: Size(327, 50),
                        elevation: 12,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(50),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Sing in',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 20),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Forgot Your Password?',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
