import 'package:http/http.dart' show Client;
import 'package:level_ui/src/models/level_model.dart';
import 'dart:convert';

String v1 = '/api/v1';
String basePath = "";

class ApiProvider {
  Client client = Client();

  set path(String path) {
    basePath = path;
  }

  Future <LevelModel> fetchLevel(basepath) async {
      final uri = basePath+v1+"/level";
      final response = await client.get(uri);
      if (response.statusCode == 200) {
        // If the call to the server was successful, parse the JSON.
        return LevelModel.fromJson(json.decode(response.body));
      } else {
        // If that call was not successful, throw an error.
        throw Exception('Failed to load Level');
      }
  }

  // setBase(path){
  //   basePath = path;
  // }
}