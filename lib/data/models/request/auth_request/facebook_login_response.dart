class FacebookLoginResponse {
  static const TAG = 'FacebookLoginResponse';
  String name;
  String firstName;
  String lastName;
  Picture pic;
  String email;
  String id;

  FacebookLoginResponse.fromJson(Map<String, dynamic> map)
      : name = map["name"],
        firstName = map["first_name"],
        lastName = map["last_name"],
        email = map["email"],
        id = map["id"],
        pic = map['picture'] != null
            ? new Picture.fromJson(map['picture'])
            : null;

/*	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = Map<String, dynamic>();
		data['name'] = name;
		data['first_name'] = firstName;
		data['last_name'] = lastName;
		data['email'] = email;
		data['id'] = id;
		data['picture'] = pic;
		return data;
	}*/
}

class Picture {
  PictureData pictureData;

  Picture.fromJson(Map<String, dynamic> json) {
    pictureData =
        json['data'] != null ? new PictureData.fromJson(json['data']) : null;
  }
}

class PictureData {
  int height;
  bool isSilhouette;
  String url;
  int width;

  PictureData.fromJson(Map<String, dynamic> json) {
    height = json['height'];
    isSilhouette = json['is_silhouette'];
    url = json['url'];
    width = json['width'];
  }
}
