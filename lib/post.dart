import 'package:http/http.dart' as http;

class Post {
  final int name;
  final int id;
  final String title;
  final String body;

  Post({this.name, this.id, this.title, this.body})
      : assert(name != null),
        assert(id != null),
        assert(title != null),
        assert(body != null);

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      name: json['name'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}


