import 'package:flutter/material.dart';

class MyClass extends StatefulWidget {
  const MyClass({Key? key}) : super(key: key);

  @override
  State<MyClass> createState() => _MyClassState();
}

class _MyClassState extends State<MyClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Class",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Text("all"),
                    Container(
                      height: 3,
                      width: 13,
                      color: Color(0xff2F80ED),
                    )
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Text(
                      "In-Progress",
                      style: TextStyle(color: Colors.grey[400]),
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Completed",
                  style: TextStyle(color: Colors.grey[400]),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Container(
                  child: Image.asset("assets/images/sk.png", scale: 2),
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                      color: Color(0xffFAFDFF),
                      border: Border.all(color: Colors.black12),
                      borderRadius: BorderRadius.all(Radius.circular(15.0))),
                ),
                SizedBox(
                  width: 15.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 140,
                      child: Text(
                        "Mastering UI Design with Figma",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    Text(
                      "Irfan Kurniawan",
                      style: TextStyle(color: Colors.grey[400]),
                    ),
                    SizedBox(
                      height: 12.0,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: 192,
                              height: 5,
                              decoration: BoxDecoration(
                                color: Color(0xffF5F9FE),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            Container(
                              width: 180,
                              height: 5,
                              decoration: BoxDecoration(
                                  color: Color(0xff2F80ED),
                                  borderRadius: BorderRadius.circular(15)),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 8.0,
                        ),
                        Text(
                          "95%",
                          style: TextStyle(fontSize: 12.0, color: Colors.black),
                        )
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
