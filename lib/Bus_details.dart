import 'package:flutter/material.dart';
import 'package:moovbe_project_flutter/bus2_details.dart';

class SeatSelection extends StatefulWidget {
  const SeatSelection({super.key});

  @override
  State<SeatSelection> createState() => _SeatSelectionState();
}

class _SeatSelectionState extends State<SeatSelection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
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
        padding: const EdgeInsets.only(top: 20, left: 10),
        child: Column(
          children: [
            Container(
                height: 120,
                width: 360,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 35, 34, 34),
                    borderRadius: BorderRadius.circular(10)),
                child: Container(
                  height: 110,
                  width: 330,
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
                  ),
                )),
            SizedBox(height: 10),
            // Container(
            //     height: 550,
            //     width: 320,
            //     decoration: BoxDecoration(
            //         color: Colors.white,
            //         border: Border.all(color: Colors.black, width: 1)),
            //     child: Column(
            //       children: [
            //         Align(
            //             alignment: Alignment.topRight,
            //             child: Padding(
            //               padding: const EdgeInsets.all(8.0),
            //               child: Icon(Icons.chair),
            //             )),
            //         SizedBox(
            //           height: 500,
            //           child: GridView.builder(
            //             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //                 crossAxisCount: 4, childAspectRatio: 2.0),
            //             itemCount: 36,
            //             itemBuilder: (context, index) {
            //               return Row(
            //                 children: [
            //                   Container(
            //                     child: Padding(
            //                       padding: const EdgeInsets.all(8.0),
            //                       child: Icon(
            //                         Icons.chair,
            //                         color: Colors.red,
            //                       ),
            //                     ),
            //                   ),
            //                 ],
            //               );
            //             },
            //           ),
            //         )
            //       ],
            //
            //     )),
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
            //           child: InkWell(
            //               onTap: () {
            //                 Navigator.of(context).push(MaterialPageRoute(
            //                     builder: (context) => Selection()));
            //               },
            //               child: Icon(Icons.chair)),
            //         ),
            //       ),
            //       SizedBox(
            //         height: 500,
            //         child: GridView.builder(
            //           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //             crossAxisCount: 4,
            //             childAspectRatio: 2.0,
            //           ),
            //           itemCount: 36,
            //           itemBuilder: (context, index) {
            //             if (index.isEven) {
            //               return Row(
            //                 children: [
            //                   Container(
            //                     child: Padding(
            //                       padding: const EdgeInsets.only(left: 30),
            //                       child: Icon(
            //                         Icons.chair,
            //                         color: Colors.red,
            //                       ),
            //                     ),
            //                   ),
            //                   Container(
            //                     child: Icon(
            //                       Icons.chair,
            //                       color: Colors.red,
            //                     ),
            //                   ),
            //                 ],
            //               );
            //             } else {
            //               return Container(
            //                 child: Icon(
            //                   Icons.chair,
            //                   color: Colors.red,
            //                 ),
            //               );
            //             }
            //           },
            //         ),
            //       ),
            //     ],
            //   ),
            // )
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
                                builder: (context) => Selection()));
                          },
                          child: Icon(Icons.chair)),
                    ),
                  ),
                  SizedBox(
                    height: 500,
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 2.0, // Set the aspect ratio to 1:1
                      ),
                      itemCount:
                          20, // Adjusted the itemCount for 4 icons in each row
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Row(
                            children: [
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.chair,
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                              Container(
                                child: Icon(
                                  Icons.chair,
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          ),
                        );
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
