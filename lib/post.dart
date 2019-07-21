import 'package:http/http.dart' as http;

class Post {
  final String name;
  final String party;
//  final String title;
//  final String body;

  Post({this.name, this.party})
      : assert(name != null),
        assert(party != null);
//        assert(title != null),
//        assert(body != null);

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      name: json['name'],
      party: json['party'],
//      title: json['title'],
//      body: json['body'],
    );
  }
}


