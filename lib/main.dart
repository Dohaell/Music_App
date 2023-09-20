import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Screens/HomePage.dart';
import 'Screens/PlayListPage.dart';
import 'Screens/SongPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
  debugShowCheckedModeBanner: false,
   home: HomePage(),
   getPages: [
    // GetPage(name: '/', page: () => const HomePage() ),
    // GetPage(name: '/song', page: () => SongPage() ),
    // GetPage(name: '/playlist', page: () => PlayListPage() ),

   ],
   );
  }
}
