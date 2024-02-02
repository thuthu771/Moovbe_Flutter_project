import 'package:flutter/material.dart';
import 'package:moovbe_project_flutter/Add_Driver.dart';

class ListOfDrivers extends StatefulWidget {
  const ListOfDrivers({super.key});

  @override
  State<ListOfDrivers> createState() => _ListOfDriversState();
}

class _ListOfDriversState extends State<ListOfDrivers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: AppBar(
            title: const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                "Driver List",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w400),
              ),
            ),
            backgroundColor: Colors.black,
          )),
      body: Expanded(
        child: Column(
          children: [
            Align(
                alignment: Alignment.topLeft, child: Text("21 Drivers Found")),
            SizedBox(
              height: 400,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 21,
                itemBuilder: (BuildContext, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 241, 237, 237),
                          borderRadius: BorderRadius.circular(10)),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Row(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  // borderRadius: BorderRadius.circular(20),
                                  color:
                                      const Color.fromARGB(255, 210, 207, 207),
                                  image: const DecorationImage(
                                      image: AssetImage("assets/driver3.jpg"),
                                      fit: BoxFit.fill)),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 95, top: 5),
                                    child: Text("Rohit Sharma"),
                                  ),
                                  Text("License no:PJ515196161")
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: Container(
                                height: 30,
                                width: 80,
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius:
                                        BorderRadiusDirectional.circular(5)),
                                child: Center(
                                    child: Text(
                                  "Delete",
                                  style: TextStyle(color: Colors.white),
                                )),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 200),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 60,
                  width: 330,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const AddDriver()));
                      },
                      child: const Text(
                        "Add Driver",
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
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
