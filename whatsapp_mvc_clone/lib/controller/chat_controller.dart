import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:whatsapp_mvc_clone/services/json_services.dart';
import '../models/chat_model.dart';
class ChatController extends ChangeNotifier
{
  List<Chat> chats = [];
  getChats() async
  {
    //connect the controller to json services for receive data
   dynamic data = await JsonServices.loadJsonData("assets/data/chats.json");
    data = jsonDecode(data);
   data = data as List;
    //print(data.runtimeType);
    chats = data.map((e) => Chat.fromMap(e)).toList();
    //print(chats.length);
    //notifyListeners();
  }
}