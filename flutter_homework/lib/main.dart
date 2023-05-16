import 'package:flutter/material.dart';
import 'package:flutter_homework/home.dart';
import 'package:flutter_homework/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: const ColorScheme.dark(),
      ),
      home: const RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Center(
              child: Text(
            "Post-It",
            style: TextStyle(color: Colors.amber),
          )),
          bottom: const TabBar(tabs: [
            Tab(
              text: "Home",
              icon: Icon(
                Icons.home,
                color: Colors.amber,
              ),
            ),
            Tab(
              text: "Profile",
              icon: Icon(Icons.person, color: Colors.amber),
            ),
          ]),
        ),
        body: const TabBarView(
          children: [
            HomePage(),
            ProfilePage(),
          ],
        ),
      ),
    );
  }
}
