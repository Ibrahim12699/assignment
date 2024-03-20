const String tableUsers = 'users';

class AuthModel {
  String? username;
  String? email;
  String? sessionToken;
  String? walletAmount;
  String? lastUpdate;
  String? lastActivity;
  String? lastActivityDate;

  AuthModel({
    this.username,
    this.email,
    this.sessionToken,
    this.walletAmount = '920.0',
    this.lastUpdate = '24/6',
    this.lastActivity = '245.0',
    this.lastActivityDate = '10/5',
  });

  AuthModel.fromJson(json) {
    username = json['username'];
    email = json['email'];
    sessionToken = json['sessionToken'];
    walletAmount = '920.0';
    lastUpdate = '24/6';
    lastActivity = '245.0';
    lastActivityDate = '10/5';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['username'] = username;
    data['email'] = email;
    data['sessionToken'] = sessionToken;
    return data;
  }
}
