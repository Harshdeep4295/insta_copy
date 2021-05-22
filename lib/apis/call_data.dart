import 'dart:async';

import 'package:http/http.dart' as http;
import 'package:insta_copy/model/user_detail.dart';

Future<UserDetails?> loadUserDetail(String userName) async {
  var client = http.Client();
  String url = 'https://www.instagram.com/$userName/?__a=1';
  try {
    var uriResponse = await client.get(
      Uri.parse(url),
    );
    return UserDetails.fromJson(uriResponse.body.toString());
  } on Exception catch (ex) {
    print(ex);
  } finally {
    client.close();
  }

  return null;
}
