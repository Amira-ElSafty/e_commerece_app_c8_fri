import 'package:flutter/material.dart';
import 'package:flutter_e_commerece_app_c8/ui/widgets/custom_button.dart';
import 'package:flutter_e_commerece_app_c8/ui/widgets/custom_text_form_field.dart';
import 'package:flutter_e_commerece_app_c8/ui/widgets/form_label.dart';

class RegisterScreen extends StatelessWidget {
  static const String routeName = 'registe';
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController rePasswordController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          Image.asset(
            'assets/images/route_logo.png',
            height: 71,
            width: 237,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      FormLabelWidget(label: 'Full Name'),
                      SizedBox(
                        height: 24,
                      ),
                      CustomTextFormField(
                          hintText: 'enter your full name',
                          controller: nameController,
                          validator: (text) {
                            if (text == null || text.trim().isEmpty) {
                              return 'Please enter full name';
                            }
                            return null;
                          },
                          type: TextInputType.name),
                      SizedBox(
                        height: 32,
                      ),
                      FormLabelWidget(label: 'Email Address'),
                      SizedBox(
                        height: 24,
                      ),
                      CustomTextFormField(
                          hintText: 'enter your email address',
                          controller: emailController,
                          validator: (text) {
                            if (text == null || text.trim().isEmpty) {
                              return 'Please enter email';
                            }
                            var emailValid = RegExp(
                                    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                .hasMatch(text);
                            if (!emailValid) {
                              return 'email format not valid';
                            }

                            return null;
                          },
                          type: TextInputType.emailAddress),
                      SizedBox(
                        height: 32,
                      ),
                      FormLabelWidget(label: 'Mobile Number'),
                      SizedBox(
                        height: 24,
                      ),
                      CustomTextFormField(
                          hintText: 'enter your mobile number',
                          controller: phoneController,
                          validator: (text) {
                            if (text == null || text.trim().isEmpty) {
                              return 'Please enter mobile number';
                            }
                            if (text.trim().length < 10) {
                              return 'Phone number should be at least 10 numbers.';
                            }
                            return null;
                          },
                          type: TextInputType.phone),
                      SizedBox(
                        height: 32,
                      ),
                      FormLabelWidget(label: 'Password'),
                      SizedBox(
                        height: 24,
                      ),
                      CustomTextFormField(
                        hintText: 'enter your password',
                        controller: passwordController,
                        validator: (text) {
                          if (text == null || text.trim().isEmpty) {
                            return 'Please enter password ';
                          }
                          if (text.length < 6) {
                            return 'Phone number should be at least 6 chrs.';
                          }
                          return null;
                        },
                        type: TextInputType.visiblePassword,
                        isPassword: true,
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      FormLabelWidget(label: 'Password Confirmation'),
                      SizedBox(
                        height: 24,
                      ),
                      CustomTextFormField(
                        hintText: 're-enter your password confirmation',
                        controller: rePasswordController,
                        validator: (text) {
                          if (text == null || text.trim().isEmpty) {
                            return 'Please re-enter password ';
                          }
                          if (passwordController.text != text) {
                            return "Password doesn't match.";
                          }
                          return null;
                        },
                        type: TextInputType.visiblePassword,
                        isPassword: true,
                      ),
                      SizedBox(
                        height: 56,
                      ),
                      CustomButtonWidget(title: 'Sign Up', onPressed: () {})
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
