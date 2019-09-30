

class LevelModel {
    double _reading;
    LevelModel.fromJson(Map<String,dynamic> parsedJson){
      _reading = parsedJson['reading'];
    }

    double get reading => _reading;

}