import 'package:flutter/material.dart';

import 'color.dart';

class InputDecorationStyle {
  static inputDecorationStyle(String labelText) => InputDecoration(
      border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          borderSide: BorderSide(color: AppColors.greyColor)),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.purpleColor),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      focusedErrorBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.redColor),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      labelText: labelText,
      hintText: "+62",
      labelStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w400));
}
