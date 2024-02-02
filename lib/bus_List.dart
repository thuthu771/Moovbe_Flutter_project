import 'package:flutter/material.dart';
import 'package:moovbe_project_flutter/Bus_details.dart';

class BusAndDriver extends StatefulWidget {
  const BusAndDriver({super.key});

  @override
  State<BusAndDriver> createState() => _BusAndDriverState();
}

class _BusAndDriverState extends State<BusAndDriver> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(110),
        child: AppBar(
          title: const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 60, top: 35),
                child: Text(
                  "moov",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 35),
                child: Text(
                  "be",
                  style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 30,
                      fontWeight: FontWeight.w500),
                ),
              )
            ],
          ),
          backgroundColor: Colors.black,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Container(
                    height: 210,
                    width: 170,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10)),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Column(
                        children: [
                          const Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 40, top: 10),
                                child: Text(
                                  "Bus",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 24),
                                child: Text(
                                  "Manage your Bus",
                                  style: TextStyle(color: Colors.white),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 10,
                              top: 10,
                            ),
                            child: Row(
                              children: [
                                Container(
                                  height: 110,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.black,
                                      image: const DecorationImage(
                                          image: AssetImage(
                                            "assets/bus.jpg",
                                          ),
                                          fit: BoxFit.fill)),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Container(
                    height: 210,
                    width: 170,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10)),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Column(
                        children: [
                          const Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 40, top: 10),
                                child: Text(
                                  "Driver",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 24),
                                child: Text(
                                  "Manage your Driver",
                                  style: TextStyle(color: Colors.white),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 10,
                              top: 10,
                            ),
                            child: Row(
                              children: [
                                Container(
                                  height: 110,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.black,
                                      image: const DecorationImage(
                                          image: AssetImage(
                                            "assets/driver.jpg",
                                          ),
                                          fit: BoxFit.fill)),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(right: 230),
              child: Text("21 Buses Found"),
            ),
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
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color:
                                      const Color.fromARGB(255, 210, 207, 207),
                                  image: const DecorationImage(
                                      image: AssetImage("assets/bus2.jpg"),
                                      fit: BoxFit.fill)),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 95, top: 5),
                                    child: Text("KSRTC"),
                                  ),
                                  Text("Swift Scania P-Series")
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Container(
                                height: 40,
                                width: 95,
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius:
                                        BorderRadiusDirectional.circular(5)),
                                child: Center(
                                    child: InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const SeatSelection()));
                                  },
                                  child: const Text(
                                    "Manage",
                                    style: TextStyle(color: Colors.white),
                                  ),
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
            )
          ],
        ),
      ),
    );
  }
}
