import 'package:flutter/material.dart';
import 'package:flutter_e_commerece_app_c8/repository/auth/auth_repository_contract.dart';
import 'package:flutter_e_commerece_app_c8/ui/login/login_navigator.dart';

class LoginScreenViewModel extends ChangeNotifier{
  AuthRepositoryContract repositoryContract ;
  late LoginNavigator navigator ;
  LoginScreenViewModel(this.repositoryContract);

  login(String email , String password)async{
    /// show loading
    navigator.showLoading();
    try{
      var response = await repositoryContract.login(email, password);
      /// hide loading
      navigator.hideLoading();
      /// show message
      navigator.showMessage('Login Successfully \n ${response}',
          posActionTitle: 'Ok',
          posAction: (){
        // save token
            // navigate to home screen
          }
      );
    }catch(e){
      /// hideloading
      navigator.hideLoading();
      /// show message
      navigator.showMessage(e.toString());
    }
  }
}