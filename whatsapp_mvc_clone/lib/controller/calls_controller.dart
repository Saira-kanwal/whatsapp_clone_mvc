import 'dart:convert';

import 'package:flutter/foundation.dart';

import '../models/calls_model.dart';
import '../services/json_services.dart';

class CallsController extends ChangeNotifier{
  List<Calls> calls = [];
  getCalls() async{
    //connect the controller to json services for receive data
    dynamic data = await JsonServices.loadJsonData("assets/data/calls.json");
    data = jsonDecode(data);
    data = data as List;
    //print(data.runtimeType);
    calls = data.map((e) => Calls.fromMap(e)).toList();
    //print(chats.length);
    //notifyListeners();
  }
}