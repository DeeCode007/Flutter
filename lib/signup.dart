import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_with_validation/login.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 60.0,
                ),
                Image.asset('assets/image/welcome.png', fit: BoxFit.cover),
                const SizedBox(
                  height: 20.0,
                ),
                const Text(
                  "Sign Up",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 40.0,
                ),

                //form
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      //Full Name
                      TextFormField(
                        decoration: const InputDecoration(
                            hintText: "Enter Your full Name",
                            labelText: "Full Name:",
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                              color: Colors.black,
                              width: 1.0,
                            ))),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "You can't leave this field empty";
                          } else {
                            return null;
                          }
                        },
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),

                      //Mobile No.
                      TextFormField(
                        decoration: const InputDecoration(
                            labelText: "Mobile no:",
                            hintText: "Enter your mobile number",
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                              color: Colors.black,
                              width: 1.0,
                            ))),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "You can't leave this field empty";
                          } else if (value.length == 10) {
                            return null;
                          } else {
                            return "Enter 10 digit mobile no.";
                          }
                        },
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),

                      //Email
                      TextFormField(
                        decoration: const InputDecoration(
                            labelText: "E-mail:",
                            hintText: "Enter your email address",
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                              color: Colors.black,
                              width: 1.0,
                            ))),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "You can't leave this field empty";
                          } else if (!RegExp(
                                  r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$')
                              .hasMatch(value)) {
                            return "Enter a valid Email Address";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),

                      //Password
                      TextFormField(
                          obscureText: true,
                          decoration: const InputDecoration(
                              labelText: "Password:",
                              hintText: "Create a strong password",
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                color: Colors.black,
                                width: 1.0,
                              ))),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "You can't leave this field empty";
                            } else if (!RegExp(
                                    r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                                .hasMatch(value)) {
                              return "Enter a valid Password";
                            }
                            return null;
                          }),
                      const Text(
                        "Password must contain atleast one upper case, one lower case, one number , one special character and length shoulb be 8",
                        style: TextStyle(color: Colors.black54, fontSize: 10.0),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),

                      //Button

                      InkWell(
                        onTap: () {
                          _formKey.currentState!.validate()
                              ? Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginPage()))
                              : print("Invalid");
                        }, //Navigator.pushNamed(context, MyRoutes.loginPage)
                        child: Container(
                          width: 250,
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
                ),
              ],
            )));
  }
}
