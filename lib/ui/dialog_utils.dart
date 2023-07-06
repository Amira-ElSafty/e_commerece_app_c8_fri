import 'package:flutter/material.dart';
import 'package:flutter_e_commerece_app_c8/styles/app_colors.dart';

class DialogUtils {
  static void showProgressDialog(BuildContext context, String message,
      {bool isDismissible = true}) {
    showDialog(
        context: context,
        builder: (buildContext) {
          return AlertDialog(
            backgroundColor: Theme.of(context).primaryColor,
            content: Row(
              children: [
                CircularProgressIndicator(),
                SizedBox(
                  width: 12,
                ),
                Text(message),
              ],
            ),
          );
        },
        barrierDismissible: false);
  }

  static void showMessage(BuildContext context, String message,
      {String? posActionTitle,
        VoidCallback? posAction,
        String? negActionTitle,
        VoidCallback? negAction,
        bool isDismissible = true}) {
    showDialog(
        context: context,
        builder: (buildContext) {
          List<Widget> actions = [];
          if (posActionTitle != null) {
            actions.add(TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  if (posAction != null) posAction();
                },
                child: Text(posActionTitle,
                  style: TextStyle(
                    color: AppColors.whiteColor
                  ),
                )));
          }
          if (negActionTitle != null) {
            actions.add(TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  if (negAction != null) {
                    negAction();
                  }
                },
                child: Text(negActionTitle)));
          }
          return AlertDialog(
            backgroundColor: Theme.of(context).primaryColor,
            content: Text(message),
            actions: actions,
          );
        },
        barrierDismissible: isDismissible);
  }

  static void hideDialog(BuildContext context) {
    Navigator.pop(context);
  }
}