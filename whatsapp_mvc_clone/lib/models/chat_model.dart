import 'message_model.dart';

class Chat
{
  final String? userName;
  final String? imageUrl;
  final String? lastMessage;
  final String? lastSeen;
  final List<Message>? messages;

  //non positional constructor

Chat({this.imageUrl,this.lastMessage,this.lastSeen,this.messages, this.userName});
//factory
factory Chat.fromMap(Map data)
{
  List<Message> temp = [];
  dynamic x = data['messages'];
  x = x as List;
  temp = x.map((e) => Message.fromMap(e)).toList();
  return Chat(
    userName: data['userName'],
    imageUrl: data['imageUrl'],
    lastMessage: data['lastMessage'],
    lastSeen: data['lastSeen'],
    messages: temp,

  );
}
}