import 'package:flutter/material.dart';
import 'package:flutter_app/main.dart';
import 'package:flutter_app/page2.dart';

class Nav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.deepPurple[400],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(),
                      Text(
                        'Demo app DSC',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  onTap: () {
                    Navigator.of(context).pushNamed('HomePage');
                  },
                  title: Text(
                    'Home',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  leading: Icon(Icons.home, color: Colors.black),
                ),
                ListTile(
                  onTap: () {
                    Navigator.of(context).pushNamed('About');
                  },
                  title: Text(
                    'About',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  leading: Icon(Icons.info, color: Colors.black)
                ),



              ],
            ),
          ),
          Container(
            height: 20,
            color: Colors.deepPurple,
            child: Align(
              alignment:FractionalOffset.bottomCenter,

                        child: Text(
                          'Powered by Google Develpers',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            letterSpacing: 2,
                            wordSpacing: 3,

                          ),
                        )

                    ),

              ),



        ],
      ),





    );
  }
}
