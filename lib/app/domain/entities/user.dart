class User {
  String? id;
  String? phone;
  String? password;
  String? fullName;
  String? email;
  String? status;
  String? gender;

  User(
      {this.id,
      this.phone,
      this.password,
      this.fullName,
      this.email,
      this.status,
      this.gender});

  User.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    phone = json['Phone'];
    password = json['Password'];
    fullName = json['FullName'];
    email = json['Email'];
    status = json['Status'];
    gender = json['Gender'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Id'] = id;
    data['Phone'] = phone;
    data['Password'] = password;
    data['FullName'] = fullName;
    data['Email'] = email;
    data['Status'] = status;
    data['Gender'] = gender;
    return data;
  }
}
