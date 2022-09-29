import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Center1 extends StatelessWidget {
  const Center1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Text("About ME",
            style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold)),
        const SizedBox(
          height: 30.0,
        ),
        Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "EDUCATION",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 33.0,
                        height: 1.3,
                      ),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Wrap(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                            //constraints: const BoxConstraints(maxWidth: 400.0),
                            child: const Text(
                              "Bachelor in computer engineering degree,\nAspire to make tech more accessible\n and beneficial to mankind",
                              style: TextStyle(
                                color: Color.fromARGB(255, 61, 57, 61),
                                fontSize: 19,
                                height: 2.5,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                  ],
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 300,
                      width: 300,
                      color: const Color.fromARGB(255, 241, 147, 216),
                    ),
                    Container(
                      height: 250,
                      width: 250,
                      color: const Color.fromARGB(255, 236, 33, 182),
                      child: const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Center(
                            child: Image(
                          image: AssetImage("image/flutter.png"),
                        )),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        const Text(
                          "WHAT CAN I DO FOR YOU !",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 33.0,
                            height: 1.3,
                          ),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Wrap(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Container(
                                constraints:
                                    const BoxConstraints(maxWidth: 400.0),
                                child: const Text(
                                  "Building applications that achieve the required\n specifications and on time,\n God willing ",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 61, 57, 61),
                                    fontSize: 19,
                                    height: 2.5,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 40.0,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 180,
                          width: 180,
                          child: Lottie.asset(
                            "image/lottie/apple.json",
                          ),
                        ),
                        SizedBox(
                          height: 180,
                          width: 180,
                          child: Lottie.asset(
                            "image/lottie/android.json",
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
