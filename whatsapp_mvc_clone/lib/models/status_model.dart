class Status
{
  final String? userName;
  final String? statusImg;
  final String? isStatusSeen;
  final String? time;

  //non positional contractor

  Status({this.userName,this.time,this.isStatusSeen,this.statusImg});
//factory
  factory Status.fromMap(Map data)
  {

    return Status(
      userName: data['userName'],
      statusImg: data['statusImg'],
      time: data['time'],
      isStatusSeen: data['isStatusSeen'],
    );
  }
}