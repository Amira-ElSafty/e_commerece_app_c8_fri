import 'package:flutter/material.dart';
import 'package:flutter_e_commerece_app_c8/ui/widgets/custom_button.dart';
import 'package:flutter_e_commerece_app_c8/ui/widgets/custom_text_form_field.dart';
import 'package:flutter_e_commerece_app_c8/ui/widgets/form_label.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = 'login';
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 60,
                ),
                Image.asset('assets/images/route_logo.png'),
                SizedBox(
                  height: 86,
                ),
                Text(
                  'Welcome Back To Route',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Please sign in with your mail',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                SizedBox(
                  height: 40,
                ),
                FormLabelWidget(
                  label: 'Email Address',
                ),
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
                FormLabelWidget(
                  label: 'Password',
                ),
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
                  height: 16,
                ),
                InkWell(
                  onTap: () {},
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: FormLabelWidget(label: 'Forget Password')),
                ),
                SizedBox(
                  height: 56,
                ),
                CustomButtonWidget(title: 'Login', onPressed: () {}),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FormLabelWidget(label: "Don't have an account ? "),
                    InkWell(
                      onTap: () {
                        // navigate register screen
                      },
                      child: FormLabelWidget(label: 'Create Account'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
