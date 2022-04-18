class UserModel {
  String? name;
  int? nik;
  String? addr;
  int? phone;
  String? email;

  UserModel({this.name, this.nik, this.addr, this.phone, this.email});

  //receiving data from server
  factory UserModel.fromMap(map) {
    return UserModel(
        nik: map('nik'),
        name: map('name'),
        addr: map('address'),
        phone: map('phone'),
        email: map('email'));
  }

  //sending data to our server
  Map<String, dynamic> toMap() {
    return {
      'nik': nik,
      'name': name,
      'address': addr,
      'phone': phone,
      'email': email
    };
  }
}
