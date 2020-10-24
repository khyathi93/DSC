import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class Page2 extends StatelessWidget {
  var onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[400],
        title: Text('About'),
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              padding: EdgeInsets.fromLTRB(50, 40, 50, 20),
              child: Image(
                  image: AssetImage('assests/DSC.png'
                      )),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(60, 10, 60, 40),
            child: Text(
              'Developer Student Clubs is a community where everyone is welcome. We help students bridge the gap between thery and practicce and grow their knowledge by providing a peer-to-peer learning evironment, byconducting workshops,study jams ad building solutions for local business. Developer Student Clubs is a program suppoerted by Google Developers.',
              textAlign:  TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            child: OutlineButton(
              padding: EdgeInsets.fromLTRB(100, 10, 100, 10),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              disabledBorderColor: Colors.purple,
              child: Text(
                'Visit dscsastra.com',
                style: TextStyle(
                  color: Colors.purple,
                ),
              ),
              onPressed: () {
                const url = 'https://dscsastra.com';
                launch(url);
              },
                

            ),
          ),
        ],
      ),
    );
  }
}
