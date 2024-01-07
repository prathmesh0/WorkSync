import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:work_sync/model/user.dart';

class UserApi {
  static Future<List<User>> fetchUsers() async {
    try {
      const url = 'https://randomuser.me/api/?results=100';
      final uri = Uri.parse(url);
      final response = await http.get(uri);

      if (response.statusCode == 200) {
        final body = response.body;
        final jsonRes = jsonDecode(body);
        final results = jsonRes['results'] as List<dynamic>;

        final detailUsers = results.map((e) {
          final name = UserName(
            title: e['name']['title'],
            first: e['name']['first'],
            last: e['name']['last'],
          );

          final location = UserLocation(
            city: e['location']['city'],
            state: e['location']['state'],
            country: e['location']['country'],
          );

          final image = UserImage(
            largeimg: e['picture']['large'],
            mediumimg: e['picture']['large'],
            thumbnail: e['picture']['large'],
          );

          String gender = e['gender'] ?? '';
          if (gender.isNotEmpty) {
            gender = gender.substring(0, 1).toUpperCase() + gender.substring(1);
          }

          return User(
            cell: e['cell'],
            email: e['email'],
            gender: gender,
            nat: e['nat'],
            phone: e['phone'],
            name: name,
            location: location,
            image: image,
          );
        }).toList();

        return detailUsers;
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      //print('Error: $e');
      return Future<List<User>>.value([]);
    }
  }
}
