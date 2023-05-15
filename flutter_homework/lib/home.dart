import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class PostIt {
  final String sender;
  final String message;
  final String time;

  PostIt({required this.sender, required this.message, required this.time});
}

final List<PostIt> postIts = [
  PostIt(
      sender: "Homer Simpson",
      message: "Who wants a beer at Moe's?",
      time: "19:14"),
  PostIt(sender: "Bart Simpson", message: "You're bald :P?", time: "19:14"),
  PostIt(
      sender: "Ned Flanders",
      message: "My garden is so beautiful :)",
      time: "19:12"),
  PostIt(
      sender: "Mr. Burns",
      message: "I'm gonna buy this app just cause",
      time: "19:10"),
  PostIt(
      sender: "Krusty", message: "This burgers are the best!", time: "19:07"),
  PostIt(sender: "Fat Tony", message: "Always Watching O_O", time: "19:02"),
  PostIt(
      sender: "Homer Simpson",
      message: "Who wants a beer at Moe's?",
      time: "19:14"),
  PostIt(sender: "Bart Simpson", message: "You're bald :P?", time: "19:14"),
  PostIt(
      sender: "Ned Flanders",
      message: "My garden is so beautiful :)",
      time: "19:12"),
  PostIt(
      sender: "Mr. Burns",
      message: "I'm gonna buy this app just cause",
      time: "19:10"),
  PostIt(
      sender: "Krusty", message: "This burgers are the best!", time: "19:07"),
  PostIt(sender: "Fat Tony", message: "Always Watching O_O", time: "19:02"),
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
              leading: const Icon(Icons.person_2_outlined),
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
