import 'package:flutter/material.dart';
import 'package:login_with_validation/utils/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(top: 120.00),
          child: Column(
            children: [
              Image.asset(
                'assets/image/welcome.png',
                fit: BoxFit.cover,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Welcome",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 50.0, horizontal: 20.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                          labelText: "Username",
                          hintText: "Enter your Username"),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                          hintText: "Enter your Password",
                          labelText: "Password"),
                    ),
                    const SizedBox(
                      height: 25.0,
                    ),

                    //SignIn
                    InkWell(
                      // onTap: () {
                      //   Navigator.pushNamed(context, MyRoutes.signUpPage);
                      // },
                      child: Container(
                        width: 110,
                        height: 40,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.pink.shade100,
                            borderRadius: BorderRadius.circular((20))),
                        child: const Text(
                          "Sign In",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const Text("Or",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.00)),
                    SizedBox(
                      width: 110,
                      height: 40,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, MyRoutes.signUpPage);
                          },
                          child: const Text("Sign up")),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
