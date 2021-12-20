class UserModel{
  final String? UserID;
  String? email;
  String? firstName;
  String? lastName;
  String? password;
  String? adress;

  UserModel({this.UserID });

  Map<String,dynamic> toMap(){
    return {
      'UserID':UserID,
      'email':email,
      'firstName':firstName,
      'lastName':lastName,
      'password':password,
      'adress':adress
    };
  }

  UserModel.fromMap(Map<String,dynamic> map):
  UserID=map['UserID'],
  email=map['email'],
  firstName=map['firstName'],
  lastName=map['lastName'],
  password=map['password'],
  adress=map['adress'];

  @override
  String toString() {
    // TODO: implement toString
    return 'UserModel{UserID:$UserID,email:$email,firstName:$firstName,lastName:$lastName,password:$password,adress:$adress}';
  }
}