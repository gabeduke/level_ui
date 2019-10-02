import 'package:json_annotation/json_annotation.dart';

part 'web.g.dart';

@JsonLiteral('web.json', asConst: true)
Map<String, dynamic> get config => _$configJsonLiteral;