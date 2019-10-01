import 'package:level_ui/config.dart';
import 'package:level_ui/src/models/level_model.dart';
import 'package:flutter_web/material.dart';
import 'package:level_ui/src/resources/api_provider.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var config = ConfigWrapper.of(context);

    final apiProvider = initApi(config.apiBaseUrl);
    var level = apiProvider.fetchLevel();

    return new Scaffold(
      appBar: new AppBar(
        title: new Text(config.appName),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text('This is the ${config.env} app.'),
            new Text('Backend API url is ${config.apiBaseUrl}'),
            FutureBuilder<LevelModel>(
              future: level,
              builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                return new Text ('Level is ${snapshot.data.reading}');
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }
              // By default, show a loading spinner.
              return CircularProgressIndicator();
            },
            ),
          ],
        ),
      ),
    );
  }
}