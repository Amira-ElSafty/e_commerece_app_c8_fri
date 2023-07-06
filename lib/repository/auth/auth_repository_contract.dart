import 'package:flutter_e_commerece_app_c8/api/response/LoginResponse.dart';
import 'package:flutter_e_commerece_app_c8/api/response/RegisterResponse.dart';
import 'package:flutter_e_commerece_app_c8/repository/auth/datasource/auth_remote_datasource_impl.dart';
import 'package:flutter_e_commerece_app_c8/repository/auth/repository/auth_repository_impl.dart';

abstract class AuthRepositoryContract{
  Future<String?> register(String name , String email , String phone ,
      String password , String rePassword);
  Future<String?> login(String email , String password);
}
abstract class AuthRemoteDataSource{
  Future<RegisterResponse> register(String name , String email , String phone ,
      String password , String rePassword);
  Future<LoginResponse> login(String email , String password);
}

AuthRepositoryContract injectAuthRepository(){
  return AuthRepositoryImpl(injectAuthRemoteDataSource());
}