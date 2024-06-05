import 'package:flutter/material.dart';

class Grid extends StatelessWidget {
  const Grid({super.key});

  @override
  Widget build(BuildContext context) {
    final arrayColor = [
      Colors.blue,
      Colors.black,
      Colors.yellow,
      Colors.green,
      Colors.red,
      Colors.orange,
      Colors.purpleAccent
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(child: Text("HomePage")),
      ),
      body: Column(
        children: [
          const Text("GridView.count"),
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 4,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            children: [
              Container(
                color: Colors.blue,
              ),
              Container(color: Colors.black),
              Container(
                color: Colors.blue,
              ),
              Container(color: Colors.black),
              Container(
                color: Colors.blue,
              ),
              Container(color: Colors.black),
              Container(
                color: Colors.blue,
              ),
              Container(color: Colors.black),
              Container(
                color: Colors.blue,
              ),
              Container(color: Colors.black),
            ],
          ),
          const SizedBox(
            height: 20.0,
          ),
          const Text("GridView.extent"),
          GridView.extent(
            maxCrossAxisExtent: 50,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            shrinkWrap: true,
            children: [
              Container(
                color: Colors.blue,
              ),
              Container(color: Colors.black),
              Container(
                color: Colors.blue,
              ),
              Container(color: Colors.black),
              Container(
                color: Colors.blue,
              ),
              Container(color: Colors.black),
              Container(
                color: Colors.blue,
              ),
              Container(color: Colors.black),
              Container(
                color: Colors.blue,
              ),
              Container(color: Colors.black),
            ],
          ),
          const SizedBox(height: 20.0),
          const Text("GridView.builder"),
          GridView.builder(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Container(
                color: arrayColor[index],
              );
            },
            itemCount: arrayColor.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5, crossAxisSpacing: 10, mainAxisSpacing: 10),
          )
        ],
      ),
    );
  }
}
