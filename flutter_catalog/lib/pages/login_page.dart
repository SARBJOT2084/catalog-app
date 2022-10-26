import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // list in flutter

  String name = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 36.0),
              child: Image.asset(
                "assets/images/login.png",
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              "Welcome $name",
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Enter username",
                        labelText: "Username",
                      ),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: "Enter password",
                        labelText: "Password",
                      ),
                    ),
                  ],
                )),
            // ignore: prefer_const_constructors
            SizedBox(
              height: 20.0,
            ),
            // ElevatedButton(
            //   style: TextButton.styleFrom(minimumSize: const Size(150, 40)),
            //   onPressed: () {
            //     Navigator.pushNamed(context, MyRoutes.homeRoute);
            //   },
            //   child: const Text("Login"),
            // )
            InkWell(
              onTap: () async {
                setState(() {
                  changeButton = true;
                });
                await Future.delayed(const Duration(seconds: 1));

                // ignore: use_build_context_synchronously
                Navigator.pushNamed(context, MyRoutes.homeRoute);
              },
              child: AnimatedContainer(
                duration: const Duration(seconds: 1),
                width: changeButton ? 50 : 150,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  shape: changeButton ? BoxShape.circle : BoxShape.rectangle,
                  // borderRadius: BorderRadius.circular(changeButton ? 20 : 8)
                ),
                child: changeButton
                    ? const Icon(
                        Icons.done,
                        color: Colors.white,
                      )
                    : const Text("Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
