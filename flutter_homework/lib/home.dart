import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class PostIt {
  final String sender;
  final String message;
  final String time;
  final CircleAvatar avatar;

  PostIt(
      {required this.sender,
      required this.message,
      required this.time,
      required this.avatar});
}

final List<PostIt> postIts = [
  PostIt(
    sender: "Homer Simpson",
    message: "Who wants a beer at Moe's?",
    time: "19:14",
    avatar: const CircleAvatar(
      radius: 25.0,
      backgroundImage: AssetImage('images/homer.jpeg'),
      backgroundColor: Colors.white,
    ),
  ),
  PostIt(
    sender: "Bart Simpson",
    message: "You're bald :P?",
    time: "19:14",
    avatar: const CircleAvatar(
      radius: 25.0,
      backgroundImage: AssetImage('images/bart.png'),
      backgroundColor: Colors.white,
    ),
  ),
  PostIt(
    sender: "Ned Flanders",
    message: "My garden is so beautiful :)",
    time: "19:12",
    avatar: const CircleAvatar(
      radius: 25.0,
      backgroundImage: AssetImage('images/ned.webp'),
      backgroundColor: Colors.white,
    ),
  ),
  PostIt(
    sender: "Mr. Burns",
    message: "I'm gonna buy this app just cause",
    time: "19:10",
    avatar: const CircleAvatar(
      radius: 25.0,
      backgroundImage: AssetImage('images/icon.png'),
      backgroundColor: Colors.white,
    ),
  ),
  PostIt(
    sender: "Krusty",
    message: "This burgers are the best!",
    time: "19:07",
    avatar: const CircleAvatar(
      radius: 25.0,
      backgroundImage: AssetImage('images/krusty.png'),
      backgroundColor: Colors.white,
    ),
  ),
  PostIt(
    sender: "Fat Tony",
    message: "Always Watching O_O",
    time: "19:02",
    avatar: const CircleAvatar(
      radius: 25.0,
      backgroundImage: AssetImage('images/tony.webp'),
      backgroundColor: Colors.white,
    ),
  ),
  PostIt(
    sender: "Homer Simpson",
    message: "Who wants a beer at Moe's?",
    time: "19:14",
    avatar: const CircleAvatar(
      radius: 25.0,
      backgroundImage: AssetImage('images/homer.jpeg'),
      backgroundColor: Colors.white,
    ),
  ),
  PostIt(
    sender: "Bart Simpson",
    message: "You're bald :P?",
    time: "19:14",
    avatar: const CircleAvatar(
      radius: 25.0,
      backgroundImage: AssetImage('images/bart.png'),
      backgroundColor: Colors.white,
    ),
  ),
  PostIt(
    sender: "Ned Flanders",
    message: "My garden is so beautiful :)",
    time: "19:12",
    avatar: const CircleAvatar(
      radius: 25.0,
      backgroundImage: AssetImage('images/ned.webp'),
      backgroundColor: Colors.white,
    ),
  ),
  PostIt(
    sender: "Mr. Burns",
    message: "I'm gonna buy this app just cause",
    time: "19:10",
    avatar: const CircleAvatar(
      radius: 25.0,
      backgroundImage: AssetImage('images/icon.png'),
      backgroundColor: Colors.white,
    ),
  ),
  PostIt(
    sender: "Krusty",
    message: "This burgers are the best!",
    time: "19:07",
    avatar: const CircleAvatar(
      radius: 25.0,
      backgroundImage: AssetImage('images/krusty.png'),
      backgroundColor: Colors.white,
    ),
  ),
  PostIt(
    sender: "Fat Tony",
    message: "Always Watching O_O",
    time: "19:02",
    avatar: const CircleAvatar(
      radius: 25.0,
      backgroundImage: AssetImage('images/tony.webp'),
      backgroundColor: Colors.white,
    ),
  ),
];

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: postIts.length,
        itemBuilder: (BuildContext context, int index) {
          PostIt postIt = postIts[index];
          return Slidable(
            actionPane: const SlidableScrollActionPane(),
            actions: <Widget>[
              IconSlideAction(
                caption: "Share",
                color: Colors.blue,
                icon: Icons.share,
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text("Sticky Note Shared"),
                    backgroundColor: Colors.amber,
                  ));
                  debugPrint("Share Button");
                },
              ),
              IconSlideAction(
                caption: "Delete",
                color: Colors.red,
                icon: Icons.delete,
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text("Sticky Note Deleted"),
                    backgroundColor: Colors.amber,
                  ));
                  debugPrint("Delete Button");
                  postIts.remove(postIt);
                  setState(() {});
                },
              ),
            ],
            actionExtentRatio: 1 / 5,
            child: ListTile(
              leading: postIt.avatar,
              title: Text(postIt.sender),
              subtitle: Text(postIt.message),
              trailing: Text(postIt.time),
            ),
          );
        },
      ),
    );
  }
}
