// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Config _$ConfigFromJson(Map<String, dynamic> json) {
  return Config(
    env: json['env'] as String,
    appName: json['appName'] as String,
    apiBaseUrl: json['apiBaseUrl'] as String,
    production: json['production'] as bool,
    apiKey: json['apiKey'] as String,
  );
}
