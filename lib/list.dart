import 'package:flutter/material.dart';

class List extends StatelessWidget {
  const List({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(child: Text("List")),
      ),
      body: Container(
        height: 100,
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          children: [
            Container(
              width: 50,
              height: 50,
              color: Colors.blue,
            ),
            Container(
              width: 50.0,
              height: 50.0,
              color: Colors.black,
            ),
            Container(
              height: 50.0,
              width: 50.0,
              color: Colors.yellow,
            ),
            Container(
              height: 50.0,
              width: 50.0,
              color: Colors.red,
            ),
            Container(
              height: 50.0,
              width: 50.0,
              color: Colors.grey,
            ),
            Container(
              height: 50.0,
              width: 50.0,
              color: Colors.green,
            ),
            Container(
              width: 50.0,
              height: 50.0,
              color: const Color.fromRGBO(33, 150, 243, 1),
            ),
            Container(
              width: 50.0,
              height: 50.0,
              color: Colors.black,
            ),
            Container(
              height: 50.0,
              width: 50.0,
              color: Colors.yellow,
            ),
            Container(
              height: 50.0,
              width: 50.0,
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
