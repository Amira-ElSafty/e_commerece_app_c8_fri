import 'package:flutter_e_commerece_app_c8/api/response/User.dart';

/// message : "success"
/// user : {"name":"Ahmed Abd Al-Muti","email":"ahmed1@route.com","role":"user"}
/// token : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYzZjYxZDE3ZWM5YmFmNWI0NzkzMzcwYSIsIm5hbWUiOiJBaG1lZCBBYmQgQWwtTXV0aSIsInJvbGUiOiJ1c2VyIiwiaWF0IjoxNjg3NTE3NDgxLCJleHAiOjE2OTUyOTM0ODF9.G5Rjsrxu6_PzvL_6xehbILYVHRsJ87l7H4UJ6-w_1D4"

class LoginResponse {
  LoginResponse({
      this.message, 
      this.user, 
      this.token,
  this.statusMsg});

  LoginResponse.fromJson(dynamic json) {
    message = json['message'];
    statusMsg = json['statusMsg'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    token = json['token'];
  }
  String? message;
  User? user;
  String? token;
  String? statusMsg;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = message;
    map['statusMsg'] = statusMsg;
    if (user != null) {
      map['user'] = user?.toJson();
    }
    map['token'] = token;
    return map;
  }

}

