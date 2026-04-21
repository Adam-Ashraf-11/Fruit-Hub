import 'package:e_commerce_app/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
      decoration: InputDecoration(
        prefixIcon: SizedBox(
          width: 40,
          child: Center(child: SvgPicture.asset(Assets.imageSvgSearch))),
        hintText: 'ابحث عن.......',
        hintStyle: TextStyle(color: Colors.grey),
        suffixIcon: SizedBox(
          width: 40,
          child: Center(child: SvgPicture.asset(Assets.imageSvgFillter))),
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
