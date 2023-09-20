import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:musicapp/Screens/song.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Song> songs = Song.songs;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.black54,
            unselectedItemColor: Colors.white,
            selectedItemColor: Colors.white,
            showUnselectedLabels: false,
            showSelectedLabels: false,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.play_circle_fill_outlined),
                label: 'Play',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: 'Favorites',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_sharp),
                label: 'Profile',
              ),
            ]),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // SizedBox(
              //   height: 50,
              // ),
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
                length: 4,
                child: Column(
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
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        isDense: true,
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Search',
                        hintStyle: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: Colors.grey.shade400),
                        prefixIcon:
                            Icon(Icons.search, color: Colors.grey.shade400),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 16.0, left: 16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Trending Music',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge!
                                    .copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              Text(
                                'View More',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.27,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: songs.length,
                        itemBuilder: (context, index) {
                          return Stack(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.47,
                                height: 200,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      songs[index].coverUrl,
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container( 
                                    height: 50,
                                    width: MediaQuery.of(context).size.width *
                                        0.37,
                                    margin: EdgeInsets.only(bottom: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    child: Center(
                                      child: Text(songs[index].title),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    // TabBarView(
                    //   children: [
                    //     // Content for Music tab
                    //     Center(child: Cards(1)),
                    //     // Content for Podcast tab
                    //     Center(child: Cards(2)),
                    //     // Content for Event tab
                    //     Center(child: Cards(3)),
                    //     // Content for Artist tab
                    //     Center(child: Cards(4)),
                    //   ],
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
