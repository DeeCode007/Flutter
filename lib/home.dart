import 'package:flutter/material.dart';
import 'package:login_with_validation/utils/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("HomePage"),
      ),
      body: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, MyRoutes.gridPage);
            },
            child: Container(
              width: 200,
              height: 50,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 81, 51, 146),
                  borderRadius: BorderRadius.circular(20.0)),
              child: const Center(
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, MyRoutes.listPage);
            },
            child: Container(
              width: 200,
              height: 50,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 81, 51, 146),
                  borderRadius: BorderRadius.circular(20.0)),
              child: const Center(
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
