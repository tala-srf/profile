import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';

class Start extends StatefulWidget {
  const Start({Key? key}) : super(key: key);

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 700,
        width: 650,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.2), BlendMode.dstATop),
            image: const AssetImage(
              'image/me.jpg',
            ),
          ),
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Hello....",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20.0,
              ),
              DefaultTextStyle(
                style: const TextStyle(
                    fontSize: 55.0, color: Color.fromARGB(255, 236, 33, 182)),
                child: AnimatedTextKit(
                  animatedTexts: [
                    WavyAnimatedText('I AM TALA ALSAIRAFI'),
                  ],
                  isRepeatingAnimation: true,
                  onTap: () {
                    print("Tap Event");
                  },
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                "FLUTTER DEVELOPER  ",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                "junior Flutter app developer  ",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 110,
                      width: 110,
                      child: IconButton(
                        icon: Lottie.asset(
                          "image/lottie/gmail.json",
                        ),
                        onPressed: () async {
                          final Uri _url1 = Uri.parse("http://talaalsairafi2019@gmail.com");
                          if (!await launchUrl(_url1)) {
                            throw 'Could not launch $_url1';
                          }
                        },
                      ),
                    ),
                    Container(
                      height: 110,
                      width: 110,
                      child: IconButton(
                        icon: Lottie.asset(
                          "image/lottie/whatsapp.json",
                        ),
                        onPressed: () => _makePhoneCall("+963932470485"),
                      ),
                    ),
                  ],
                ),
              )
            ]),
      ),
    );
  }

  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }
}
