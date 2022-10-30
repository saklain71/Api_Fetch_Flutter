
//mport 'package:api_fetch_practice/ui/post_method.dart';
import 'package:api_fetch_practice/model/post_method_complex.dart';
import 'package:http/http.dart' as http;
//import 'package:http/http.dart';

class PostDataSource{

   static Future<Post?> getData()async{
    try{
      var url = Uri.parse('https://dummyjson.com/products');
      var response = await http.get(url);
      print("Json response Post response>>>>>>>>>>>>>>>>>>>>>>>>>>>>> $response");
      if(response.statusCode == 200){
        Post _posts = postFromJson(response.body);
        print("Json response after data Modeling>>>>>>>>>>>>>>>>>>>>>>>>>>>> $_posts");
        return _posts;
      }
    } catch (e){
      print(e.toString());
    }
  }
}