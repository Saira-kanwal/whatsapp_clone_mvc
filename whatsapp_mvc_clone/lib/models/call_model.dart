class Call{
  final String? imageUrl;
  final String? userName;
  final String?dateTime;
  final String? callStatus;
  final String? callType;

//non positional constructor
  Call({this.imageUrl,this.callStatus,this.dateTime,this.userName,this.callType});

  factory Call.fromMap(Map data)
  {
    return Call(
    imageUrl: data["imageUrl"],
    userName: data["userName"],
    dateTime:  data["dateTime"],
    callStatus: data["callStatus"],
      callType: data["callType"]
    );
  }
}