import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Profilepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Page'),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('lib/assets/images/background.jpg'),
                    fit: BoxFit.cover)),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  child: Icon(
                Icons.person,
                size: 170,
              )),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Name: ", style: TextStyle(fontSize: 24)),
                  Text("Ram",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold))
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Email: ", style: TextStyle(fontSize: 24)),
                  Text("ram@gmail.com",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold))
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Phone Number: ", style: TextStyle(fontSize: 24)),
                  Text("12345 XXXXX",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold))
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
