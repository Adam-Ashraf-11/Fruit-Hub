import 'package:e_commerce_app/core/widgets/custom_text_form_feild.dart';
import 'package:flutter/material.dart';

class CustomPassFormFeild extends StatefulWidget {
  const CustomPassFormFeild({super.key, this.onSaved});
  final void Function(String?)? onSaved;

  @override
  State<CustomPassFormFeild> createState() => _CustomPassFormFeildState();
}

class _CustomPassFormFeildState extends State<CustomPassFormFeild> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return CustomTextFormFeild(
      obscureText: obscureText,
      onSaved: widget.onSaved,
      hintText: 'كلمة المرور',
      keyboardType: TextInputType.visiblePassword,
      sufIcon: GestureDetector(
        onTap: () {
          setState(() {
            obscureText = !obscureText;
          });
        },
        child: obscureText
            ? const Icon(Icons.visibility_off, color: Colors.grey)
            : const Icon(Icons.remove_red_eye, color: Colors.grey),
      ),
    );
  }
}
