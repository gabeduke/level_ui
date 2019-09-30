import 'package:http/http.dart' show Client;
import '../models/level_model.dart';
import 'dart:convert';

String basePath = 'http://localhost:8081';

class ApiProvider {
  Client client = Client();
  fetchLevel() async {
    final response = await client.get("http://localhost:8081/api/v1/level");
    LevelModel levelModel = LevelModel.fromJson(json.decode(response.body));
    return levelModel;
  }
}