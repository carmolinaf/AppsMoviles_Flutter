import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/items.dart';
import 'package:flutter_application_1/style/colors.dart';
import 'package:flutter_application_1/style/text_style.dart';
import 'package:flutter_application_1/widgets/item_card.dart';
import 'package:flutter_application_1/widgets/items_details.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({Key? key, required this.model}) : super(key: key);
  final ItemsModel model;

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //body base
          Column(

            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hero(
                tag: "model${widget.model.id}",
                child: Container(
                  height: 400.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(24.0),
                      bottomRight: Radius.circular(24.0),
                      ),
                  image: DecorationImage(
                    image: AssetImage(widget.model.item_img_path),
                    fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0,),
                Container(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Text(
                              widget.model.item_model,
                              style: AppTextStyle.detailsTextStyle,
                              softWrap: true,
                            ),
                            ),
                            Text(
                              widget.model.price,
                              style: AppTextStyle.priceTextStyle,
                            )
                        ],
                      ),
                      SizedBox(height: 30.0,
                      ),
                      Text("Detalles del item",
                       style: AppTextStyle.mainTitleStyle
                       ),
                       SizedBox(height: 12.0,
                       ),
                       Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         itemDetail(Icons.sd_storage, "265 gb"),
                         itemDetail(Icons.memory, "M1"),
                         itemDetail(Icons.computer, "Portatil"),
                         itemDetail(Icons.security, "Antivirus"),
                       ],
                       ),
                       
                    ],
                    ),
                ),
                Expanded(
                         child: Align(
                           alignment: Alignment.bottomCenter,
                           child: Container(
                             margin: EdgeInsets.all(16.0),
                             width: double.infinity,
                             height: 60.0,
                             child: RawMaterialButton(
                               onPressed: (){},
                               child: Text("Compra Ahora", style: TextStyle(
                                 color: Colors.white,
                                  fontSize: 22.0,
                                   fontWeight: FontWeight.bold,
                                   )
                               ),
                               fillColor: AppColor.primaryColor,
                               shape: RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(12.0),
                                 ),
                             ),
                           ),
                          ),
                         )
            ],
          ),
          //nav menu
          Padding(
            padding: EdgeInsets.symmetric(vertical: 18.0),
            child: IconButton(
              onPressed: (){
                Navigator.pop(context);
                },
            icon: Icon(
              Icons.arrow_back_outlined,
            color: Colors.white,
            )
          )
          )
        ],
      ),
    );
  }
}