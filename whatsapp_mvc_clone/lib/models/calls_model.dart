class Calls{
  final String? imageUrl;
  final String? userName;
  final String?dateTime;
  final String? callStatus;
  final String? callType;

//non positional constructor
  Calls({this.imageUrl,this.callStatus,this.dateTime,this.userName,this.callType});

  factory Calls.fromMap(Map data)
  {
    return Calls(
    imageUrl: data["imageUrl"],
    userName: data["userName"],
    dateTime:  data["dateTime"],
    callStatus: data["callStatus"],
      callType: data["callType"]
    );
  }
}