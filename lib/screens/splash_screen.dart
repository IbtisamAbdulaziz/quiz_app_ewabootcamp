import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz_app_ewabootcamp/screens/login_screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/app_backgroun_image.jpg"),
              fit: BoxFit.cover)),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          SizedBox(
            height: (MediaQuery.of(context).size.height) *
                1 /
                4, // responsive design
          ),
          Image.asset(
            "assets/app_logo.png",
            height: 150,
            width: 150,
          ),
          Text(
            "Ready ? Let's get started ! ",
            style: TextStyle(
                fontSize: 25,
                color: Colors.brown,
                fontWeight: FontWeight.bold,
                fontFamily: 'Schyler'),
          ),
          Spacer(), // بياخد المسافة الفاضية المتاحة في المكان اللي هو فيه

          SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                  // style:
                  //     ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) =>
                               LoginScreen(),
                        ));
                  },
                  child: Text("Go to login screen")))
        ],
      ),
    ));
  }
}
