// // To parse this JSON data, do
// //
// //     final post = postFromJson(jsonString);
//
// import 'dart:convert';
//
// List<Post> postFromJson(String str) => List<Post>.from(json.decode(str).map((x) => Post.fromJson(x)));
//
// String postToJson(List<Post> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
//
// class Post {
//   Post({
//     this.userId,
//     this.id,
//     this.title,
//     this.completed,
//   });
//
//   int? userId;
//   int? id;
//   String? title;
//   bool? completed;
//
//   factory Post.fromJson(Map<String, dynamic> json) => Post(
//     userId: json["userId"],
//     id: json["id"],
//     title: json["title"],
//     completed: json["completed"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "userId": userId,
//     "id": id,
//     "title": title,
//     "completed": completed,
//   };
// }
