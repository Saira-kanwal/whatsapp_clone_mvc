class Contact{
  final String? userName;
  final String? imageUrl;
  final String? about;

//non positional constructor

Contact({this.userName,this.imageUrl,this.about});

factory Contact.fromMap(Map data){
  return Contact(
    userName: data['userName'],
    imageUrl: data['imageUrl'],
    about: data['about'],
  );

}

}