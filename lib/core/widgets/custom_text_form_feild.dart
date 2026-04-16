import 'package:flutter/material.dart';

class CustomTextFormFeild extends StatelessWidget {
  const CustomTextFormFeild({
    super.key,
    required this.hintText,
    this.sufIcon,
    this.keyboardType,
  });
  final String hintText;
  final Widget? sufIcon;
  final TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey),
        suffixIcon: sufIcon,
        fillColor: Color(0XFFf9fbfa),
        filled: true,
        enabledBorder: outBorder(),
        focusedBorder: outBorder(),
      ),
    );
  }

  OutlineInputBorder outBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xffe5e9ea), width: 1),
      borderRadius: BorderRadius.circular(12),
    );
  }
}
