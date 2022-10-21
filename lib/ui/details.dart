import 'package:api_fetch_practice/ui/post_method.dart';
import 'package:api_fetch_practice/ui/post_method_complex.dart';
import 'package:api_fetch_practice/ui/post_source.dart';
import 'package:flutter/material.dart';

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
          if (postList == null) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView.builder(
              itemCount: postList.products?.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(postList.products![index].title.toString()),
                  //subtitle: Text(postList[index].completed.toString()),
                  leading: Text(postList.products![index].id.toString()),
                );
              });
        },
      ) ,

    );
  }
}


