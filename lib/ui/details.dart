import 'package:api_fetch_practice/data_model/post_method.dart';
import 'package:api_fetch_practice/model/post_method_complex.dart';
import 'package:api_fetch_practice/data_model/post_source.dart';
import 'package:api_fetch_practice/ui/newPage.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'Carosel.dart';



class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Posts"),
      ),

      body:FutureBuilder(
        future:PostDataSource.getData() ,
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          Post post = snapshot.data;
          print("productList >>>>>>>>>>>>> ...... >>>>$post");
          // if (productList == null ) {
          //   return const Center(
          //     child: CircularProgressIndicator(),
          //   );
          // }
         List<Product> productList=post.products??[];
         productList[1];
          return productList.isEmpty?Container():ListView.builder(
              itemCount: post.products?.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(productList[index].title.toString()),
                  //subtitle: Text(productList.products![index].images![0].toString()),
                  leading: Text(productList[index].id.toString()),
               onTap: (){
                 Navigator.push(
                   context,
                   //MaterialPageRoute(builder: (context) => NewPage(product: productList.products![index].images![index].toString() ,)),
                //   MaterialPageRoute(builder: (context) => NewPage(product: productList.products![index],)),
                  MaterialPageRoute(builder: (context) => CaroselWithDots(imgList: productList[index]))
                  );
                 },
                );
              });
        },
      ) ,

    );
  }
}


