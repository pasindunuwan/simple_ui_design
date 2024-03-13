import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class welcomepage extends StatelessWidget {
  const welcomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(backgroundColor: Colors.green)
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(Icons.person_3, size: 150, color: Colors.amber),
              const SizedBox(height: 40),
              const Text(
                "Welcome",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 30),
              ),
              const SizedBox(height: 10),
              const Text(
                "glyph causing overflow, and those that follow, will not be rendered",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 20),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  OutlinedButton(
                      onPressed: () {},
                      child: const Text(
                        "SIGN IN",
                        style: TextStyle(color: Colors.black),
                      )),
                  FilledButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.amber),
                    ),
                    child: const Text(
                      "LOGIN",
                      style: TextStyle(color: Colors.black),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 40),
              GestureDetector(
                onTap: () {
                  Logger().f("press button");
                },
                child: Container(
                  height: 50,
                  width: 250,
                  decoration: const BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: const Center(child: Text("Join Now")),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
