import 'package:flutter/material.dart';
import 'src/app.dart';

import 'package:level_ui/src/resources/config.dart';

void main() {
  var configuredApp = new AppConfig(
    appName: 'Build flavors PROD',
    flavorName: 'production',
    apiBaseUrl: 'http://localhost.com/8081',
    child: new App(),
  );

  runApp(configuredApp);
}