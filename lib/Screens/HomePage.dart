import 'package:flutter/material.dart';
import 'package:musicapp/Screens/FirstPage.dart';
import 'package:musicapp/Screens/LoginPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/image1.jpg"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 30.0, left: 30),
                child: Text(
                  'Create Your Playlist Share It With Other',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.w900,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 25, left: 30),
                child: Text(
                  'Choose music according to your taste, create your own playlist to accompany your day',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.white70,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FirstPage()),
                  );
                },
                child: const Text(
                  "Get Started",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(390, 50),
                  primary: Colors
                      .purple, // Use 'primary' instead of 'backgroundColor'
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
