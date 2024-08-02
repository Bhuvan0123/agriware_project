import 'package:agriware_project/components/Mybutton.dart';
import 'package:agriware_project/components/Myinput.dart';
import 'package:agriware_project/pages/Home_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  TextEditingController _emailc = TextEditingController();
  TextEditingController _pwdc = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Lottie.asset("lib/assets/lottie/logo.json"),
          title: Text("Sign In"),
        ),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('lib/assets/images/background.jpg'),
                  fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Start your journey with us",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              Myinput(ishidden: false, tc: _emailc, name: "Email"),
              SizedBox(height: 16),
              Myinput(ishidden: true, tc: _pwdc, name: "Password"),
              SizedBox(
                height: 16,
              ),
              Mybutton(
                  name: "Signin",
                  ontap: () {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Homepage(),
                        ));
                  })
            ],
          ),
        ));
  }
}
