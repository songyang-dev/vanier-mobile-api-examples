import 'dart:convert';

import 'package:http/http.dart' as http;

import 'models.dart';

Future<Album> fetchAlbum() async {
  final response = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

  if (response.statusCode == 200) {
    // successful response
    // String (response.body) -> Map<> -> Album
    return Album.fromJson(jsonDecode(response.body));
  } else {
    // server error
    throw Exception("No album found");
  }
}
