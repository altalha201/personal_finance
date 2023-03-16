import 'package:flutter/material.dart';

import '../utils/application_assets.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    Key? key,
    required this.hint,
    required this.controller,
    this.maxLines,
    this.obscureText,
    this.validator,
    this.leading,
  }) : super(key: key);

  final String hint;
  final TextEditingController controller;
  final int? maxLines;
  final bool? obscureText;
  final Function(String?)? validator;
  final Icon? leading;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText ?? false,
      maxLines: maxLines ?? 1,
      validator: (value) {
        if(validator != null) {
          return validator!(value);
        }
        return null;
      },
      decoration: InputDecoration(
          iconColor: AppColor.colorDarkGray,
          prefixIcon: leading,
          contentPadding:
          const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          filled: true,
          fillColor: AppColor.colorWhite,
          floatingLabelStyle: TextStyle(color: AppColor.colorBlack),
          focusColor: AppColor.colorBlack,
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColor.colorBlack, width: 1.0)),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: AppColor.colorGray, width: 1.0)),
          labelText: hint,

      ),
    );
  }
}
