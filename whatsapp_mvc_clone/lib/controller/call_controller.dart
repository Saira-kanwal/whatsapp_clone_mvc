import 'dart:convert';
import 'package:flutter/foundation.dart';
import '../models/call_model.dart';
import '../services/json_services.dart';

class CallController extends ChangeNotifier{
  List<Call> calls = [];
  getCalls() async{
    //connect the controller to json services for receiving data
    dynamic data = await JsonServices.loadJsonData("assets/data/calls.json");
    data = jsonDecode(data);
    data = data as List;
    //print(data.runtimeType);
    calls = data.map((e) => Call.fromMap(e)).toList();
    //print(chats.length);
    //notifyListeners();
  }
}