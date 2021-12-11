import 'package:flutter/material.dart';

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
        title: Text('Drawer'),
      ),
      body: SafeArea(
        child: Text('Drawer Page'),
      ),
    );
  }
}
