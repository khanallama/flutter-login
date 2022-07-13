import 'package:flutter/material.dart';
import 'package:untitled/utils/routes.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String name = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/images/undraw_hey_email_liaa.png"),
              Text(
                "Login $name",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Enter Username",
                        labelText: "Username",
                      ),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                      // validator: (value) {
                      //   if (value.isEmpty) {
                      //     return "please Enter Username ";
                      //   }
                      //   return null;
                      // },
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password",
                      ),
                      obscureText: true,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: Material(
                        color: Colors.deepPurple,
                        borderRadius:
                            BorderRadius.circular(changeButton ? 50 : 8),
                        child: InkWell(
                            onTap: () async {
                              setState(() {
                                changeButton = true;
                              });
                              await Future.delayed(const Duration(seconds: 1));
                              // ignore: use_build_context_synchronously
                              await Navigator.pushNamed(
                                  context, MyRoutes.homeRoute);
                              setState(() {
                                changeButton = false;
                              });
                            },
                            child: AnimatedContainer(
                              duration: const Duration(seconds: 1),
                              width: changeButton ? 50 : 150,
                              height: 37,
                              alignment: Alignment.center,
                              // decoration: BoxDecoration(
                              //   color: Colors.deepPurple,
                              //   // shape: changeButton
                              //   //     ? BoxShape.circle
                              //   //     : BoxShape.rectangle,
                              //   borderRadius: BorderRadius.circular(
                              //       changeButton ? 50 : 8),
                              // ),
                              child: changeButton
                                  ? const Icon(Icons.done, color: Colors.white)
                                  : const Text(
                                      "login",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                            )
                            //     child: ElevatedButton(
                            //       onPressed: () {
                            //         Navigator.pushNamed(context, MyRoutes.homeRoute);
                            //       },
                            //       style: TextButton.styleFrom(
                            //           minimumSize: const Size(100, 30),
                            //           padding: const EdgeInsets.fromLTRB(0, 10, 0, 10)),
                            //       child: const Text("Login"),
                            // )

                            ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
        // child: Center(
        //     child: Text(
        //       "login page",
        //       textScaleFactor: 2.0,
        //       style: TextStyle(
        //         fontWeight: FontWeight.bold,
        //         color: Colors.blueAccent,
        //       ),
        //     ),
        //   ),
        );
  }
}
