import 'package:flutter/material.dart';
import 'package:ui_design/common/drawer_function.dart';
import 'package:ui_design/screens/drafts.dart';
import 'package:ui_design/screens/permits.dart';
import 'package:ui_design/screens/recorder.dart';

import 'home.dart';

class DrawerForm extends StatefulWidget {
  const DrawerForm({Key? key}) : super(key: key);

  @override
  _DrawerFormState createState() => _DrawerFormState();
}

class _DrawerFormState extends State<DrawerForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer'),
      ),
      body: const Center(
        child: Text('Drawer Box'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Expanded(
                    child: CircleAvatar(
                      maxRadius: 40.0,
                      child: Icon(
                        Icons.person,
                        size: 50.0,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/spectrumLogo.jpg'),
                        fit: BoxFit.contain,
                      ),
                    ),
                    height: 40.0,
                  ),
                ],
              ),
            ),
            CustomTiles(
                icon: Icons.home_outlined,
                text: 'Home',
                ontap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Home(),
                    ),
                  );
                }),
            CustomTiles(
              icon: Icons.article_outlined,
              text: 'My Permits',
              ontap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Permit(),
                  ),
                );
              },
            ),
            CustomTiles(
              icon: Icons.assignment_outlined,
              text: 'Saved Drafts',
              ontap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Draft(),
                  ),
                );
              },
            ),
            CustomTiles(
              icon: Icons.mic,
              text: 'Recorder',
              ontap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Recorder(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
