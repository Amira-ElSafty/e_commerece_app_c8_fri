import 'package:flutter/material.dart';
import 'package:flutter_e_commerece_app_c8/api/api_manager.dart';
import 'package:flutter_e_commerece_app_c8/repository/auth/auth_repository_contract.dart';
import 'package:flutter_e_commerece_app_c8/repository/auth/datasource/auth_remote_datasource_impl.dart';
import 'package:flutter_e_commerece_app_c8/repository/auth/repository/auth_repository_impl.dart';
import 'package:flutter_e_commerece_app_c8/ui/register/register_navigator.dart';

class RegisterScreenViewModel extends ChangeNotifier{
   late RegisterNavigator navigator;
   AuthRepositoryContract repositoryContract ;

   RegisterScreenViewModel(this.repositoryContract);

  void register(String name , String email , String phone ,
      String password , String rePassword)async{
    /// loading
    navigator.showLoading();
    try{
      var response = await repositoryContract.register(name, email, phone, password, rePassword);
      if(response == null){
        // hide loading
        // navigator.hideLoading();
        // // show message
        // navigator.showMessage(response ?? 'error',
        //     posActionTitle: 'Ok',
        // );
      }else{
        // hide loading
        navigator.hideLoading();
        // show message
        navigator.showMessage('Register Successfully \n ${response}',
          posActionTitle: 'Ok',
          posAction: (){
          // save token
          // navigate to home screen
          }
        );
      }
    }catch(e){
      // hide loading
      navigator.hideLoading();
      // show message
      navigator.showMessage(e.toString());

    }
  }
}