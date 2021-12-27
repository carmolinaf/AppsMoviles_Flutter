import 'package:flutter/material.dart';
import 'package:flutter_application_1/style/colors.dart';

class integrantes extends StatefulWidget {
  integrantes({Key? key}) : super(key: key);

  @override
  _integrantesState createState() => _integrantesState();
}

class _integrantesState extends State<integrantes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          backgroundColor: AppColor.primaryColor,
          title: new Text("Integrantes"),
        ),
        body: new Center(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Container(
                    width: 190.0,
                    height: 190.0,
                    decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                            fit: BoxFit.fill,
                            image: new AssetImage(
                                "assets/batman.png")
                        )
                    ),
                    
                    ),
                new Text("Carlos Molina, Anibal Tolosa",
                    textScaleFactor: 1.5)
              ],
              
            ))
    )
    ;
  }
}