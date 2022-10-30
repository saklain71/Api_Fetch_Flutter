import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {
  var product;

  NewPage({this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            minRadius: 100,
            child: Image.asset(product[0].toString()),
          ),
          Text(product.toString(),
          style: TextStyle(fontSize: 30),),
        ],
      ),
    );
  }
}
