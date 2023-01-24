import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class NewPage extends StatelessWidget {

  var product;
  NewPage({this.product});



  @override
  Widget build(BuildContext context) {
    var images = product.images;
    var title = product.title.toString();
    var brand = product.brand.toString();
    return SafeArea(
      child: Scaffold(
          body: ListView.builder(
          itemBuilder: (BuildContext ctx, int index) {
          return Column(
            children: [
              Column(
                children: [
                  Image.network(images[index]),
                  SizedBox(height: 10,)
                ],
              ),
              Row(children: [
                SizedBox(width: 20,),
                Text(title),
                Spacer(),
                Text(brand),
                SizedBox(width: 20,),
              ],),
              SizedBox(height: 20,)
            ],
          );
          },
          itemCount: images.length,
    ),

      ),
    );
  }
}

