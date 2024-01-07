class User {
  final String gender;
  final String email;
  final String phone;
  final String cell;
  final String nat;
  final UserName name;
  final UserLocation location;
  final UserImage image;

  User({
    required this.gender,
    required this.email,
    required this.phone,
    required this.cell,
    required this.nat,
    required this.name,
    required this.location,
    required this.image,
  });

  String get fullName {
    return '${name.title} ${name.first} ${name.last}';
  }
}

class UserName {
  final String title;
  final String first;
  final String last;
  UserName({
    required this.title,
    required this.first,
    required this.last,
  });
}

class UserLocation {
  final String city;
  final String state;
  final String country;

  UserLocation({
    required this.city,
    required this.state,
    required this.country,
  });
}

class UserImage {
  final String largeimg;
  final String mediumimg;
  final String thumbnail;

  UserImage({
    required this.largeimg,
    required this.mediumimg,
    required this.thumbnail,
  });
}
