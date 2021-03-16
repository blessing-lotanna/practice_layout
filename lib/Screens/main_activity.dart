import 'package:flutter/material.dart';
import 'package:layoutpractice/Screens/home_screen.dart';

class MainActivity extends StatefulWidget {
  @override
  _MainActivityState createState() => _MainActivityState();
}

class _MainActivityState extends State<MainActivity> {
  Widget body;

  @override
  void initState() {
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

              },
            ),
         ListTile(
           title: Text("Profile"),
           leading: Icon(Icons.account_circle),
           trailing: Icon(Icons.arrow_forward),
           onTap: (){

           },
         ),
            ListTile(
              title: Text("Settings"),
              leading: Icon(Icons.settings),
              trailing: Icon(Icons.arrow_forward),

              onTap: (){

              },

            ),

            ListTile(
              title: Text("About"),
              leading: Icon(Icons.help),
              trailing: Icon(Icons.arrow_forward),

              onTap: (){

              },
            )
          ],
        ),
      ),

      body: body,
    );
  }
}
