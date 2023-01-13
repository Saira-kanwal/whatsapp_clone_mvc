import 'dart:convert';

import 'package:flutter/foundation.dart';

import '../models/contact_model.dart';
import '../services/json_services.dart';

class ContactController extends ChangeNotifier{
  List<Contact> contacts = [];
  getContacts () async{
    //connect the controller to json services for receiving data
    dynamic data = await JsonServices.loadJsonData("assets/data/contacts.json");
    data = jsonDecode(data);
    data = data as List;
    contacts = data.map((e) => Contact.fromMap(e)).toList();
    notifyListeners();
  }
}