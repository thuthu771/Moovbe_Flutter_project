import 'package:flutter/material.dart';
import 'package:moovbe_project_flutter/loginpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: Container(
                  height: 80,
                  width: 180,
                  decoration: BoxDecoration(color: Colors.red),
                  child: const Row(
                    children: [
                      Center(
                        child: Text(
                          "moov",
                          style: TextStyle(
                              fontSize: 45,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ),
                      Text(
                        "be",
                        style: TextStyle(
                            fontSize: 45,
                            fontWeight: FontWeight.w500,
                            color: Colors.yellow),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 60,
                  width: 330,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const LoginPage()));
                      },
                      child: const Text(
                        "Get Started",
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.red,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
