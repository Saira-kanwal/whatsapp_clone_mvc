import 'dart:convert';
import 'package:flutter/foundation.dart';
import '../models/status_model.dart';
import '../services/json_services.dart';

class StatusController extends ChangeNotifier
{
  List<Status> status = [];
  getStatus() async
  {
    //connect the controller to json services for receive data
    dynamic data = await JsonServices.loadJsonData("assets/data/status.json");
    data = jsonDecode(data);
    data = data as List;
    //print(data.runtimeType);
    status = data.map((e) => Status.fromMap(e)).toList();
    //print(status.length);
    notifyListeners();
  }
}