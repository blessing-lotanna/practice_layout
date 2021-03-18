import 'package:flutter/material.dart';
import 'package:layoutpractice/Screens/about_screen.dart';
import 'package:layoutpractice/Screens/home_screen.dart';
import 'package:layoutpractice/Screens/profile_screen.dart';
import 'package:layoutpractice/Screens/settings_screen.dart';

class MainActivity extends StatefulWidget {
  @override
  _MainActivityState createState() => _MainActivityState();
}

class _MainActivityState extends State<MainActivity> {
  HomeScreen homeScreen;
  ProfileScreen profileScreen;
  SettingScreen settingScreen;
  AboutScreen aboutScreen;
  Widget body;


  @override
  void initState() {
    homeScreen = HomeScreen();
    profileScreen = ProfileScreen();
    settingScreen= SettingScreen();
    aboutScreen = AboutScreen();
    body = HomeScreen();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("HOME"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home),
              trailing: Icon(Icons.arrow_forward),
              onTap: (){
                setState(() {
                  body = HomeScreen();
                });
                Navigator.of(context).pop();
              },
            ),
         ListTile(
           title: Text("Profile"),
           leading: Icon(Icons.account_circle),
           trailing: Icon(Icons.arrow_forward),
           onTap: (){
             setState(() {
               body = ProfileScreen();
             });
             Navigator.of(context).pop();
           },
         ),
            ListTile(
              title: Text("Settings"),
              leading: Icon(Icons.settings),
              trailing: Icon(Icons.arrow_forward),

              onTap: (){
                 setState(() {
                  body = SettingScreen();
                });
                 Navigator.of(context).pop();
              },

            ),

            ListTile(
              title: Text("About"),
              leading: Icon(Icons.help),
              trailing: Icon(Icons.arrow_forward),

              onTap: (){
                setState(() {
                  body = AboutScreen();
                });
                Navigator.of(context).pop();
              },
            )
          ],
        ),

      ),

      body: body,

    );
  }
}
