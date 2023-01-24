import 'package:api_fetch_practice/data_model/post_method.dart';
import 'package:api_fetch_practice/model/post_method_complex.dart';
import 'package:api_fetch_practice/data_model/post_source.dart';
import 'package:api_fetch_practice/ui/newPage.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

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
          Post postList = snapshot.data;
          print("postlist >>>>>>>>>>>>>    ...... >>>>$postList");
          // if (postList == null ) {
          //   return const Center(
          //     child: CircularProgressIndicator(),
          //   );
          // }

          return ListView.builder(
              itemCount: postList.products?.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(postList.products![index].title.toString()),
                  //subtitle: Text(postList.products![index].images![0].toString()),
                  leading: Text(postList.products![index].id.toString()),
               onTap: (){
                 Navigator.push(
                   context,
                   //MaterialPageRoute(builder: (context) => NewPage(product: postList.products![index].images![index].toString() ,)),
                   MaterialPageRoute(builder: (context) => NewPage(product: postList.products![index],)),
                  );
                 },
                );
              });
        },
      ) ,

    );
  }
}


