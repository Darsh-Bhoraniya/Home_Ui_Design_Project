import 'dart:convert';
/// ImageUrl : "https://loremflickr.com/640/480"
/// city : "Yuma"
/// price : 17633
/// maps : "wlx5e6e69cd6019"
/// id : "1"

HomeUi homeUiFromJson(String str) => HomeUi.fromJson(json.decode(str));
String homeUiToJson(HomeUi data) => json.encode(data.toJson());
class HomeUi {
  HomeUi({
      String? imageUrl, 
      String? city, 
      num? price, 
      String? maps, 
      String? id,}){
    _imageUrl = imageUrl;
    _city = city;
    _price = price;
    _maps = maps;
    _id = id;
}

  HomeUi.fromJson(dynamic json) {
    _imageUrl = json['ImageUrl'];
    _city = json['city'];
    _price = json['price'];
    _maps = json['maps'];
    _id = json['id'];
  }
  String? _imageUrl;
  String? _city;
  num? _price;
  String? _maps;
  String? _id;
HomeUi copyWith({  String? imageUrl,
  String? city,
  num? price,
  String? maps,
  String? id,
}) => HomeUi(  imageUrl: imageUrl ?? _imageUrl,
  city: city ?? _city,
  price: price ?? _price,
  maps: maps ?? _maps,
  id: id ?? _id,
);
  String? get imageUrl => _imageUrl;
  String? get city => _city;
  num? get price => _price;
  String? get maps => _maps;
  String? get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['ImageUrl'] = _imageUrl;
    map['city'] = _city;
    map['price'] = _price;
    map['maps'] = _maps;
    map['id'] = _id;
    return map;
  }

}