import 'package:agriware_project/pages/Demo.dart';
import 'package:agriware_project/pages/Notification_page.dart';
import 'package:agriware_project/pages/Profile_page.dart';
import 'package:agriware_project/pages/Signin_page.dart';
import 'package:agriware_project/pages/Weather_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

Widget Homepage2() {
  return Stack(
    children: [
      Center(child: Lottie.asset("lib/assets/lottie/crop.json")),
      Center(
        child: Container(
          height: 500,
          width: 400,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white.withOpacity(0.5)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Welcome, ", style: TextStyle(fontSize: 24)),
                  Text("Ram ",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold))
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Crop: ", style: TextStyle(fontSize: 24)),
                  Text("Rice",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Status: ", style: TextStyle(fontSize: 24)),
                  Text("Healthy",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold))
                ],
              )
            ],
          ),
        ),
      )
    ],
  );
}

class _HomepageState extends State<Homepage> {
  int _pageindex = 0;
  List<Widget> _pages = [Weatherpage(), Homepage2(), Notifypage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset("lib/assets/lottie/logo.json", height: 50),
            Text(
              "Agriware",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DrawerHeader(
                  child: Center(
                    child: Lottie.asset("lib/assets/lottie/logo.json"),
                  ),
                ),
                ListTile(
                  title: Text("Profile Page"),
                  leading: Icon(Icons.person),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Profilepage(),
                        ));
                  },
                )
              ],
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              minVerticalPadding: 70,
            
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Signin(),
                    ));
              },
            )
          ],
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('lib/assets/images/background.jpg'),
                    fit: BoxFit.cover)),
          ),
          Center(
            child: _pages[_pageindex],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _pageindex,
          onTap: (value) {
            setState(() {
              _pageindex = value;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.sunny), label: "Weather"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications), label: "Notifications")
          ]),
    );
  }
}
