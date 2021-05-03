class UserModel {
  String id;
  String name;
  String address;
  double latitude;
  double longitude;

  UserModel({this.id, this.name, this.address, this.latitude, this.longitude});

  UserModel.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.name = json['name'];
    this.latitude = json['latitude'];
    this.longitude = json['longitude'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    return data;
  }
}
