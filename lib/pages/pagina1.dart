import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/items.dart';
import 'package:flutter_application_1/style/colors.dart';
import 'package:flutter_application_1/style/search_bar.dart';
import 'package:flutter_application_1/style/text_style.dart';
import 'package:flutter_application_1/widgets/item_card.dart';

import 'acerca_page.dart';
import 'integrantes_page.dart';

class Pagina1Page extends StatefulWidget {
  Pagina1Page({Key? key}) : super(key: key);

  @override
  _Pagina1PageState createState() => _Pagina1PageState();  
}

class _Pagina1PageState extends State<Pagina1Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
  child: ListView(
    // Important: Remove any padding from the ListView.
    padding: EdgeInsets.zero,
    children: [
      const DrawerHeader(
        decoration: BoxDecoration(
          color: Color(0xff4338CA),
        ),
        child: Text('Drawer Header'),
      ),
      ListTile(
        title: const Text('Acerca de'),
        onTap: () {
         print("Aprete item 1");
         Navigator.push(
           context,
           MaterialPageRoute(builder: (context) => acercaPage() )
         );
        },
      ),
      ListTile(
        title: const Text('Integrantes'),
        onTap: () {
          print("Aprete item 2");
          Navigator.push(
           context,
           MaterialPageRoute(builder: (context) => integrantes() )
         );
        },
      ),
    ],
  ),
),
      appBar: AppBar(
        title: Text("Mi app inútil"),
        //backgroundColor: Color(0xff4338CA),
        backgroundColor: AppColor.primaryColor,
      ),
      body: SingleChildScrollView(
        child: Scrollbar(
          child: Padding(
            padding:  const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 150.0,
                  padding: EdgeInsets.symmetric(vertical: 18.0),
                  child: Text("La tiendita",
                  style: TextStyle(
                    fontSize: 42,
                     fontWeight: FontWeight.bold,
                     ),
                  ),
                  ),
                  Text("Buscar un producto",
                   style: AppTextStyle.mainTitleStyle,
                  ),
                  search_bar(),
                  SizedBox(height:12.0,
                  ),
                  Column(
                    children: items_list.map((e) => item_card(e, context)).toList(),
                    )

              ],
            ),
            
          ),
        ),
      ),

    );
  }
}

List<ItemsModel> items_list = [
  ItemsModel(
    id: 0,
    //item_img_path: 'assets\batman.png', 
    item_img_path: "assets/images/img1.jpeg", 
    item_model: "Ipad Air 4 Azul 256gb",
    price:"\$599.990"
    ),
    ItemsModel(
    id: 1,
    //item_img_path: 'assets\batman.png', 
    item_img_path: "assets/images/img2.jpeg", 
    item_model: "Macbook Air M1 Gold",
    price:"\$849.990"
    ),
    ItemsModel(
    id: 2,
    //item_img_path: 'assets\batman.png', 
    item_img_path: "assets/images/img3.jpeg", 
    item_model: "Macbook Air M1 Space Grey",
    price:"\$849.990"
    ),
    ItemsModel(
    id: 3,
    //item_img_path: 'assets\batman.png', 
    item_img_path: "assets/images/img4.jpeg", 
    item_model: "Ipad Air 4 Azul 64gb",
    price:"\$599.990"
    ),
  
];