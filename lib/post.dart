import 'package:http/http.dart' as http;

class Post {
  final String name;
  final String id;
//  final String title;
//  final String body;

  Post({this.name, this.id})
      : assert(name != null),
        assert(id != null);
//        assert(title != null),
//        assert(body != null);

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      name: json['name'],
      id: json['id'],
//      title: json['title'],
//      body: json['body'],
    );
  }
}


