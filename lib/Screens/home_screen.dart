import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.all(18.0),
      child: Column(
        children: [
          Card(
            elevation: 10.0,
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Column(
                  children: [
                    SizedBox(height: 40,),
                    Image.asset("assets/images/new_image1.png",
                      width: 80,
                      height: 80,),
                    Divider(
                      thickness: 2,
                    ),
                    Text("FLUTTER STUDENTS INCLUDE; "
                        "Kosi "
                        "Blessing "
                        "Victoria "
                        "Hilary"),
                  ],
                ),
              ),
          ),
          SizedBox(height: 20,),
          Card(
            elevation: 18.0,
            child: Container(
              padding: EdgeInsets.all(18.0),
              child: Column(
                children: [
                  SizedBox(height: 40,),
                  Image.asset("assets/images/new_image2.png",
                    width: 80,
                    height: 80,),
                  Divider(
                    thickness: 2,
                  ),
                  Text("FLUTTER STUDENTS INCLUDE; "
                      "Kosi "
                      "Blessing "
                      "Victoria "
                      "Hilary"),
                ],
              ),
            ),
          ),
        ],
      ),

    );
  }
}
