import 'package:flutter/services.dart';

class JsonServices
{
  static Future<dynamic> loadJsonData (String filePath) async
  {
    var data = await rootBundle.loadString(filePath);
    return data;
  }
}