import 'package:flutter/material.dart';
// import 'package:just_audio/just_audio.dart';
// import 'package:rxdart/rxdart.dart';
class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15, left: 15),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 135.0, left: 15),
                      child: Column(
                        children: [
                          Text(
                            'Good Morning ',
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'Have a nice day!',
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Icon(
                      Icons.notifications_none,
                      color: Colors.white,
                      size: 30,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              DefaultTabController(
                length: 4, // Number of tabs
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TabBar(
                        isScrollable: true,
                        indicator: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        labelStyle: const TextStyle(fontSize: 14),
                        labelColor: Colors.white,
                        tabs: [
                          Tab(text: "Music"),
                          Tab(text: "Podcast"),
                          Tab(text: "Event"),
                          Tab(text: "Artist"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
             
            ],
          ),
        ),
      ),
    );
  }
}
