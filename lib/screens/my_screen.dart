import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:kitab_app/widgets/back_button.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutmeScreen extends StatefulWidget {
  const AboutmeScreen({super.key});

  @override
  State<AboutmeScreen> createState() => _AboutmeScreenState();
}

class _AboutmeScreenState extends State<AboutmeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        leading: const BackButtons(),
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.black,
      body: Container(
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 60),
              child: ShaderMask(
                shaderCallback: (rect) {
                  return const LinearGradient(
                    begin: Alignment.center,
                    end: Alignment.bottomCenter,
                    colors: [Colors.black, Colors.transparent],
                  ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
                },
                blendMode: BlendMode.dstIn,
                child: Image.asset(
                  'assets/images/jam.jpg',
                  height: 400,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.55),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Hello I am',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text('Jam Faraz',
                      style: TextStyle(color: Colors.white, fontSize: 40)),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Software Developer',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 120,
                    child: TextButton(
                      onPressed: () {
                        launchUrl(Uri.parse(
                          'https://github.com/jamfaraz',
                        ));
                      },
                      style: TextButton.styleFrom(
                        primary: Colors.black,
                        backgroundColor: Colors.white,
                      ),
                      child: const Text('Hire Me'),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {
                            launchUrl(Uri.parse(
                              'https://instagram.com/faraziaah?igshid=NGVhN2U2NjQ0Yg==',
                            ));
                          },
                          icon: const Icon(
                            FontAwesomeIcons.instagram,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: () {
                            launchUrl(Uri.parse(
                              'https://www.linkedin.com/in/jam-faraz-1035bb297/',
                            ));
                          },
                          icon: const Icon(
                            FontAwesomeIcons.linkedin,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: () {
                            launchUrl(Uri.parse(
                              'https://github.com/jamfaraz',
                            ));
                          },
                          icon: const Icon(
                            FontAwesomeIcons.github,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: () {
                            launchUrl(Uri.parse(
                              'https://x.com/JamFara22510238?s=09',
                            ));
                          },
                          icon: const Icon(
                            FontAwesomeIcons.twitter,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: () {
                            launchUrl(Uri.parse(
                              'https://www.facebook.com/jamfaraz.jam.90',
                            ));
                          },
                          icon: const Icon(
                            FontAwesomeIcons.facebook,
                            color: Colors.white,
                          ))
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
