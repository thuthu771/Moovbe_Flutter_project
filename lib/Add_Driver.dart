import 'package:flutter/material.dart';

class AddDriver extends StatefulWidget {
  const AddDriver({super.key});

  @override
  State<AddDriver> createState() => _AddDriverState();
}

class _AddDriverState extends State<AddDriver> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: AppBar(
            title: const Padding(
              padding: EdgeInsets.only(top: 20, left: 70),
              child: Text(
                "Add Driver",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w400),
              ),
            ),
            backgroundColor: Colors.black,
          )),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: 70,
                  width: 350,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 218, 212, 212),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(child: Text("Enter Name"))),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: 70,
                  width: 350,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 218, 212, 212),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(child: Text("Enter License Number"))),
            ),
            const SizedBox(
              height: 220,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 180),
                child: Container(
                  height: 60,
                  width: 350,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: const Text(
                      "Save",
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
