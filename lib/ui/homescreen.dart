import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int count = 0;

  void incrementCounter() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin:
                const EdgeInsets.only(top: 25, left: 20, right: 30, bottom: 35),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                    text: const TextSpan(
                  text: "SKILLKU.",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: 30),
                  children: [
                    TextSpan(
                        text: ".",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue)),
                  ],
                )),
                const CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage("assets/iamges/search.png"),
                )
              ],
            ),
          ),
          Center(
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.lightBlue.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: 310,
                  child: Container(
                    padding:
                        const EdgeInsets.only(top: 20, left: 20, bottom: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Weekend Happy\n & Learning",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "Special Material",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey),
                        ),
                        const SizedBox(
                          height: 17,
                        ),
                        MaterialButton(
                          onPressed: () => {incrementCounter()},
                          color: Colors.lightBlue,
                          height: 30,
                          minWidth: 90,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
