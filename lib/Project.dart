class Project {
  String projectName;
  String projectDescription;

  Project(this.projectName, this.projectDescription);

  /*Project.fromJson(Map<String, dynamic> json) {
    projectName = json['projectName'];
    projectDescription = json['projectDescription'];
  }*/

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['projectName'] = this.projectName;
    data['projectDescription'] = this.projectDescription;
    return data;
  }
}