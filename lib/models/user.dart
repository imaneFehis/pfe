import '../data/api.dart';

class User {
  int? id;
  String? email;
  String? username;
  String? phone;
  dynamic? picture;
  String? language;
  String? address;
  String? aboutMe;
  DateTime? dateJoined;

  User({
    this.id,
    this.email,
    this.username,
    this.phone,
    this.picture,
    this.language,
    this.address,
    this.aboutMe,
    this.dateJoined,
  });

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    username = json['username'];
    phone = json['phone'];
    if (json['picture'] != null) {
      picture = !json['picture'].contains(api)
          ? api + json['picture']
          : json['picture'];
    }
    language = json['language'];
    address = json['address'];
    aboutMe = json['about_me'];
    if (json['date_joined'] != null) {
      dateJoined = DateTime.parse(json['date_joined']);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = email;
    data['username'] = username;
    data['phone'] = phone;
    data['picture'] = picture;
    data['language'] = language;
    data['address'] = address;
    data['about_me'] = aboutMe;
    return data;
  }
}
