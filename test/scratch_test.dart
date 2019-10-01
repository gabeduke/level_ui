import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';
import 'dart:convert';
import 'package:level_ui/src/resources/api_provider.dart';

const basePath = "localhost";

void main(){
  test("Get_Level happy path", () async {
    //setup the test
    final apiProvider = initApi(basePath);
    apiProvider.client = MockClient((request) async {
      final mapJson = {'reading':4.23};
      return Response(json.encode(mapJson),200);
    });
    final resp = await apiProvider.fetchLevel();
    expect(resp.reading, 4.23);
  });
}