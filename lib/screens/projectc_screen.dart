import 'package:flutter/material.dart';
import 'package:kitab_app/widgets/back_button.dart';
import 'package:kitab_app/widgets/project_card.dart';
import 'package:url_launcher/url_launcher.dart';

class MyProject extends StatefulWidget {
  const MyProject({Key? key}) : super(key: key);

  @override
  State<MyProject> createState() => _MyProjectState();
}

class _MyProjectState extends State<MyProject> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: const BackButtons(),
        backgroundColor: const Color(0xff252525),
        centerTitle: true,
        title: const Text('Projects'),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(bottom: 20, top: 10),
          alignment: Alignment.center,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 6),
              child: Text(
                ' I’ve successfully developed and deployed several applications on both the Google Play Store and Apple App Store.Some are given below :',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                    fontWeight: FontWeight.w700),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {
                launchUrl(Uri.parse('https://github.com/jamfaraz/quran_app'));
              },
              child: const ProjectCard(
                  lang: 'Flutter',
                  description: 'ALL about the Holy Quran',
                  title: 'Quran App',
                  star: '25'),
            ),
            InkWell(
              onTap: () {
                launchUrl(
                    Uri.parse('https://github.com/jamfaraz/instagram_app'));
              },
              child: const ProjectCard(
                  lang: 'Flutter',
                  description: 'Social media app',
                  title: 'Instagram Clone',
                  star: '13'),
            ),
            InkWell(
              onTap: () {
                launchUrl(Uri.parse('https://github.com/jamfaraz/vpn_app'));
              },
              child: const ProjectCard(
                  lang: 'Flutter',
                  description: 'Made access to restricted sites',
                  title: 'Vpn App',
                  star: '17'),
            ),
            InkWell(
              onTap: () {
                launchUrl(Uri.parse('https://github.com/jamfaraz/news_app'));
              },
              child: const ProjectCard(
                  lang: 'Flutter',
                  description:
                      'Provides the current surrent situation of the world',
                  title: 'News App',
                  star: '22'),
            ),
            InkWell(
              onTap: () {
                launchUrl(
                    Uri.parse('https://github.com/jamfaraz/calculator_app'));
              },
              child: const ProjectCard(
                  lang: 'Flutter',
                  description: 'Made the calculation easy',
                  title: 'Calculator App',
                  star: '8'),
            ),
            InkWell(
              onTap: () {
                launchUrl(
                    Uri.parse('https://github.com/jamfaraz/wallpaper_app'));
              },
              child: const ProjectCard(
                  lang: 'Flutter',
                  description: 'Provides eye catching wallpapers',
                  title: 'Wallpaper App',
                  star: '11'),
            ),
            InkWell(
              onTap: () {
                launchUrl(Uri.parse('https://github.com/jamfaraz/chatgpt_app'));
              },
              child: const ProjectCard(
                  lang: 'Flutter',
                  description: 'Provides the answer of any question',
                  title: 'ChatGPt App',
                  star: '22'),
            ),
          ]),
        ),
      ),
    );
  }
}
