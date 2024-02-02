import 'package:flutter/material.dart';
import 'package:moovbe_project_flutter/Driver_list.dart';

class Selection extends StatefulWidget {
  const Selection({super.key});

  @override
  State<Selection> createState() => _SelectionState();
}

class _SelectionState extends State<Selection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          title: const Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              "KSRTC Swift Scania P-Series",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w400),
            ),
          ),
          backgroundColor: Colors.black,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 10),
        child: Column(
          children: [
            Container(
                height: 120,
                width: 360,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 35, 34, 34),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                  ),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            "Rohit Sharma",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              "License no:PJ515196161555",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          // Image(image: AssetImage("assets/driver2.jpg"))
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20, left: 20),
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(color: Colors.white),
                          child: Image(
                            image: AssetImage("assets/driver2.jpg"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      )
                    ],
                  ),
                )),
            // Container(
            //   height: 550,
            //   width: 320,
            //   decoration: BoxDecoration(
            //     color: Colors.white,
            //     border: Border.all(color: Colors.black, width: 1),
            //   ),
            //   child: Column(
            //     children: [
            //       Align(
            //         alignment: Alignment.topRight,
            //         child: Padding(
            //           padding: const EdgeInsets.all(8.0),
            //           child: Icon(Icons.chair),
            //         ),
            //       ),
            //       SizedBox(
            //         height: 500,
            //         child: GridView.builder(
            //           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //             crossAxisCount: 2,
            //             childAspectRatio: 2.0, // Set the aspect ratio to 1:1
            //           ),
            //           itemCount:
            //               20, // Adjusted the itemCount for 4 icons in each row
            //           itemBuilder: (context, index) {
            //             return Padding(
            //               padding: const EdgeInsets.only(left: 30),
            //               child: Row(
            //                 children: [
            //                   Container(
            //                     child: Icon(
            //                       Icons.chair,
            //                       color: Colors.red,
            //                     ),
            //                   ),
            //                   Container(
            //                     child: Icon(
            //                       Icons.chair,
            //                       color: Colors.red,
            //                     ),
            //                   ),
            //                   Container(
            //                     child: Icon(
            //                       Icons.chair,
            //                       color: Colors.red,
            //                     ),
            //                   ),
            //                 ],
            //               ),
            //             );
            //           },
            //         ),
            //       ),
            //     ],
            //   ),
            // )
            SizedBox(height: 10),
            Container(
              height: 550,
              width: 320,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ListOfDrivers()));
                          },
                          child: Icon(Icons.chair)),
                    ),
                  ),
                  SizedBox(
                    height: 500,
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 0.05,
                          childAspectRatio: 3.0),
                      itemCount: 24,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        if (index % 2 == 0) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                child: Icon(
                                  Icons.chair,
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          );
                        } else {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                child: Icon(
                                  Icons.chair,
                                  color: Colors.red,
                                ),
                              ),
                              Container(
                                child: Icon(
                                  Icons.chair,
                                  color: Colors.red,
                                ),
                              ),
                              Container(
                                child: Icon(
                                  Icons.chair,
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          );
                        }
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
