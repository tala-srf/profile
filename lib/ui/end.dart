import 'dart:math';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class End extends StatefulWidget {
  End({Key? key}) : super(key: key);

  @override
  State<End> createState() => _EndState();
}

class _EndState extends State<End> {
  List<String> name = ["AJYAL", 'TABIQUHA', "NEWS", "Miscellaneous UIs"];

  List<String> description = [
    "An educational & entertainment application connected to a restful API.",
    "An application that interacts with a  arduino game via Bluetooth.",
    "Newspaper application connected to Newsapi",
    "Some different user interfaces "
  ];
  // final Uri _url = Uri.parse('https://flutter.dev');

  List<List<String>> link = [
    ["https://github.com/tala-srf/TEst"],
    ["https://github.com/tala-srf/tabiquha"],
    ["https://github.com/tala-srf/news.git"],
    [
      "https://github.com/tala-srf/first_ui.git",
      "\n\nhttps://github.com/tala-srf/telegram.git",
      "\n\nhttps://github.com/tala-srf/radio-...git",
      " \n\nhttps://github.com/tala-srf/l10n.git"
    ]
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Text("PERSONAL PROJECTS",
            style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold)),
        const SizedBox(
          height: 30.0,
        ),
        GridView.builder(
            shrinkWrap: true,
            gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount:MediaQuery.of(context).size.height /
                                                  MediaQuery.of(context)
                                                      .size
                                                      .width <
                                              1 ?3:1,
              mainAxisExtent: 300,
            ),
            itemCount: name.length,
            itemBuilder: (context, index) {
              return index != 3
                  ? SingleChildScrollView(
                    child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(50),
                            ),
                            color: Color.fromRGBO(
                              Random().nextInt(255),
                              Random().nextInt(255),
                              Random().nextInt(255),
                              Random().nextInt(10) / 10,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(name[index],
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 23.0,
                                    )),
                                const SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  description[index],
                                  maxLines: 4,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    color: Color.fromARGB(255, 61, 57, 61),
                                    fontSize: 18.0,
                                    height: 1.5,
                                  ),
                                ),
                                const SizedBox(
                                  height: 30.0,
                                ),
                                MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: GestureDetector(
                                    onTap: () async {
                                      final Uri _url =
                                          Uri.parse(link[index].first);
                                      if (!await launchUrl(_url)) {
                                        throw 'Could not launch $_url';
                                      }
                                    },
                                    child: Text(
                                      link[index].first,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 16.0,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 40.0,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                  )
                  : SingleChildScrollView(
                    child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(50),
                            ),
                            color: Color.fromRGBO(
                              Random().nextInt(255),
                              Random().nextInt(255),
                              Random().nextInt(255),
                              Random().nextInt(10) / 10,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(name[index],
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 23.0,
                                    )),
                                const SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  description[index],
                                  maxLines: 4,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    color: Color.fromARGB(255, 61, 57, 61),
                                    fontSize: 18.0,
                                    height: 1.5,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5.0,
                                ),
                                MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: GestureDetector(
                                    onTap: () async {
                                      final Uri _url1 = Uri.parse(link[index][0]);
                                      if (!await launchUrl(_url1)) {
                                        throw 'Could not launch $_url1';
                                      }
                                    },
                                    child: Text(
                                      link[index][0],
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 14.0,
                                      ),
                                    ),
                                  ),
                                ),
                                MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: GestureDetector(
                                    onTap: () async {
                                      final Uri _url1 = Uri.parse(
                                          "https://github.com/tala-srf/telegram.git");
                                      if (!await launchUrl(_url1)) {
                                        throw 'Could not launch $_url1';
                                      }
                                    },
                                    child: Text(
                                      link[3][1],
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 14.0,
                                      ),
                                    ),
                                  ),
                                ),
                                MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: GestureDetector(
                                    onTap: () async {
                                      final Uri _url1 = Uri.parse(
                                          "https://github.com/tala-srf/radio-...git");
                                      if (!await launchUrl(_url1)) {
                                        throw 'Could not launch $_url1';
                                      }
                                    },
                                    child: Text(
                                      link[index][2],
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 14.0,
                                      ),
                                    ),
                                  ),
                                ),
                                MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: GestureDetector(
                                    onTap: () async {
                                      final Uri _url1 = Uri.parse(
                                          "https://github.com/tala-srf/l10n.git");
                                      if (!await launchUrl(_url1)) {
                                        throw 'Could not launch $_url1';
                                      }
                                    },
                                    child: Text(
                                      link[index][3],
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 14.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                  );
            })
      ],
    );
  }
}
