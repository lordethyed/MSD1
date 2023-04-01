class UsersModel {
  String? id;
  String? levelId;
  String? name;
  String? login;
  String? pass;
  String? dateLogin;
  String? email;
  String? enabled;

  UsersModel(
      {this.id,
        this.levelId,
        this.name,
        this.login,
        this.pass,
        this.dateLogin,
        this.email,
        this.enabled});

  UsersModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    levelId = json['level_id'];
    name = json['name'];
    login = json['login'];
    pass = json['pass'];
    dateLogin = json['date_login'];
    email = json['email'];
    enabled = json['enabled'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['level_id'] = this.levelId;
    data['name'] = this.name;
    data['login'] = this.login;
    data['pass'] = this.pass;
    data['date_login'] = this.dateLogin;
    data['email'] = this.email;
    data['enabled'] = this.enabled;
    return data;
  }
}
