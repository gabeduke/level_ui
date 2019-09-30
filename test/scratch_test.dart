import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';
import 'dart:convert';
import 'package:level_ui/src/resources/api_provider.dart';


void main(){
  test("Get_Level happy path", () async {
    //setup the test
    final apiProvider = ApiProvider();
    apiProvider.client = MockClient((request) async {
      final mapJson = {'reading':4.23};
      return Response(json.encode(mapJson),200);
    });
    final item = await apiProvider.fetchLevel();
    expect(item.reading, 4.23);
  });
}