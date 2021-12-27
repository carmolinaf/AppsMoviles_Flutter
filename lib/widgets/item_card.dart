import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/items.dart';
import 'package:flutter_application_1/pages/details_screen.dart';

Widget item_card (ItemsModel model, BuildContext context){
  return GestureDetector(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailsScreen(model : model,)));
    },
child: Container(
  margin:EdgeInsets.only(bottom:18.0),
decoration:BoxDecoration(
  color: Colors.white,
  borderRadius:BorderRadius.circular(12.0),
), // BoxDecoration
child: Column(
  mainAxisAlignment:MainAxisAlignment.start,
  crossAxisAlignment:CrossAxisAlignment.start,
  children:[
    Hero(
      tag:"model${model.id}",
      child: Container(
        height: 200.0,
         width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12.0),
              topRight: Radius.circular(12.0),
              bottomLeft: Radius.circular(24.0),
              bottomRight: Radius.circular(24.0),
            ),
            image: DecorationImage(
              image: AssetImage(model.item_img_path),
              fit: BoxFit.cover,
                ),
              ),
              padding:EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: double.infinity,
                      decoration: BoxDecoration(
                       color: Colors.black38,
                       borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(24.0),
                          bottomRight: Radius.circular(24.0),
                        ),
                      ),
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                       mainAxisAlignment: MainAxisAlignment.start,
                       crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(model.item_model, 
                          style: TextStyle(
                            color: Colors.white,
                             fontSize: 24.0,
                            ),
                          ),
                          Text(model.price, 
                          style: TextStyle(
                            color: Colors.white,
                             fontSize: 24.0,
                            ),
                          ),
                        ],
                    ),
                  )
                ]
                ),
              
              ),
            ),
        ],
      ),
    ),
  );


}
