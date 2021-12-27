import 'package:flutter/material.dart';
import 'package:flutter_application_1/style/colors.dart';

class acercaPage extends StatefulWidget {
  acercaPage({Key? key}) : super(key: key);

  @override
  _acercaPageState createState() => _acercaPageState();
}

class _acercaPageState extends State<acercaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primaryColor,
        title: const Text("Acerca de"),
      ),
      body: Center(
        //item_img_path: 'assets\batman.png',
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Image(
            image: AssetImage('assets/batman.png'),
            height: 240,
          ),
        ),
      ),

    );
  }
}