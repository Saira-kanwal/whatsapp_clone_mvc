
class Message
{
  final int? id;
  final String? messageText;
  final String? time;
  final bool? status;
  final bool? isSend;

  //non positional constructor
Message({this.id, this.messageText, this.time, this.status, this.isSend});

//factory constructor
//receives data
factory Message.fromMap(Map data)
{
  return Message(
  id: data['id'],
  messageText: data['messageText'],
  time: data['time'],
  status: data['status'],
  isSend: data['isSend'],
  );
}

}

class Class {
}