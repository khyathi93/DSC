import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

import 'main.dart';

class flower extends StatefulWidget {
  @override
  _flowerState createState() => _flowerState();
}

class _flowerState extends State<flower> {
  void getData() async {
    Response res = await get('https://wayhike.com/dsc/demo_app_api.php');
    if (res.statusCode == 200) {
      setState(() {
        map = jsonDecode(res.body);
        //print(map.toString());
        name = map['event_titles'];
        print(name.toString());
      });
    }
  }

  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return name != null
        ? ListView.builder(physics: BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Material(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  elevation: 10,
                  child:ListTile(
                    title: Center(
                      child: Text(

                        name[index],
                        style: TextStyle(
                          fontSize:13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  ),
                  SizedBox(height: 10),
                ],
              );
            },
            itemCount: name.length,
            shrinkWrap: true,
          )
        : Center(child: CircularProgressIndicator());
  }
}
