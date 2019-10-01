import 'package:flutter/material.dart';
import 'src/app.dart';
import 'package:level_ui/config.dart';
import 'package:level_ui/env/dev.dart';

void main() => runApp(
    new ConfigWrapper(config: Config.fromJson(config), child: new App()));