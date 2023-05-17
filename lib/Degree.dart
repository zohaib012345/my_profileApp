class Degree {
  String degreeName;
  String instituteName;
  String duration;

  Degree(this.degreeName, this.instituteName, this.duration);

  /*Degree.fromJson(Map<String, dynamic> json) {
    degreeName = json['degreeName']??"ss";
    instituteName = json['instituteName']"ss";
    duration = json['duration']??"ss";
  }*/

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['degreeName'] = this.degreeName;
    data['instituteName'] = this.instituteName;
    data['duration'] = this.duration;
    return data;
  }
}
