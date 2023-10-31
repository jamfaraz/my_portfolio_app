import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kitab_app/screens/my_screen.dart';
import 'package:kitab_app/widgets/my_spec.dart';
import 'package:kitab_app/widgets/reusable_row.dart';
import 'package:wtf_sliding_sheet/wtf_sliding_sheet.dart';

import 'projectc_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: PopupMenuButton(
            offset: const Offset(0, 38),
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7),
            ),
            icon: const Icon(Icons.menu),
            itemBuilder: (context) => [
                  PopupMenuItem(
                    value: 1,
                    child: TextButton(
                        child: const Text(
                          'Projects',
                          style: TextStyle(color: Colors.red, fontSize: 14),
                        ),
                        onPressed: () {
                          Get.to(() => const MyProject());
                        }),
                  ),
                  PopupMenuItem(
                    value: 2,
                    child: TextButton(
                        child: const Text(
                          'About Me',
                          style: TextStyle(color: Colors.green, fontSize: 14),
                        ),
                        onPressed: () {
                          Get.to(() => const AboutmeScreen());
                        }),
                  )
                ]),
      ),
      body: SlidingSheet(
        elevation: 8,
        cornerRadius: 50,
        snapSpec: const SnapSpec(
          snap: true,
          snappings: [0.38, 0.7, 1.0],
          positioning: SnapPositioning.relativeToAvailableSpace,
        ),
        body: Container(
          child: Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 35),
                child: ShaderMask(
                  shaderCallback: (rect) {
                    return const LinearGradient(
                      begin: Alignment.center,
                      end: Alignment.bottomCenter,
                      colors: [Colors.black, Colors.transparent],
                    ).createShader(
                        Rect.fromLTRB(0, 0, rect.width, rect.height));
                  },
                  blendMode: BlendMode.dstIn,
                  child: Image.asset(
                    'assets/images/jam.jpg',
                    height: 400,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.49),
                child: const Column(
                  children: [
                    Text('Jam Faraz',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      'Software Developer',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        builder: (context, state) {
          return Container(
            margin: const EdgeInsets.only(left: 20, top: 30, right: 20),
            height: 500,
            child: Container(
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ReusableRow(num: '13', type: 'Projects'),
                        ReusableRow(num: '19', type: 'Clients'),
                        ReusableRow(num: '44', type: 'Messages'),
                      ]),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Specialized In',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MySpecs(
                              icon: FontAwesomeIcons.android, text: 'Android'),
                          MySpecs(icon: FontAwesomeIcons.aws, text: 'Aws'),
                          MySpecs(
                              icon: FontAwesomeIcons.docker, text: 'Docker'),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MySpecs(
                              icon: FontAwesomeIcons.github, text: 'GitHub'),
                          MySpecs(icon: FontAwesomeIcons.linux, text: 'Linux'),
                          MySpecs(
                              icon: FontAwesomeIcons.wordpress,
                              text: 'WordPress'),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MySpecs(
                              icon: FontAwesomeIcons.appStoreIos, text: 'iOS'),
                          MySpecs(
                              icon: FontAwesomeIcons.terminal,
                              text: 'Scripting'),
                          MySpecs(
                              icon: FontAwesomeIcons.gamepad, text: 'Game Dev'),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
