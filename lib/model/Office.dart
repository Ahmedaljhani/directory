import 'Location.dart';

class Office {
  Office({
      required this.name,
      required this.description,
      required this.image,
    required this.googlemap,
    required this.facebookLink,
      required this.youtubeLink,
      required this.website,
    required this.email,
    required this.whatsappLink,
      required this.twitterLink,
      required this.location,});

  Office.fromJson(dynamic json) {
    name = json['name'];
    description = json['description'];
    image = json['image'];
    facebookLink = json['facebookLink'];
    youtubeLink = json['youtubeLink'];
    website = json['website'];
    email = json['email'];
    googlemap = json['googlemap'];
    whatsappLink = json['whatsappLink'];
    twitterLink = json['twitterLink'];
    location = (json['location'] != null ? Location.fromJson(json['location']) : null)!;
  }
  String? name;
  String? description;
  String? image;
  String? googlemap;
  String? facebookLink;
  String? youtubeLink;
  String? website;
  String? email;
  String? whatsappLink;
  String? twitterLink;
  Location? location;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['description'] = description;
    map['image'] = image;
    map['facebookLink'] = facebookLink;
    map['googlemap'] = googlemap;
    map['youtubeLink'] = youtubeLink;
    map['website'] = website;
    map['email'] = email;
    map['whatsappLink'] = whatsappLink;
    map['twitterLink'] = twitterLink;
    if (location != null) {
      map['location'] = location?.toJson();
    }
    return map;
  }

}