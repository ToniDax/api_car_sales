import 'package:api_car_hometask/src/core/style/app_colors.dart';
import 'package:api_car_hometask/src/core/style/text_style.dart';
import 'package:flutter/material.dart';

class CustomSearchWidget extends StatefulWidget {
  final String hintText;
  final Widget? prefixIcon;
  final TextEditingController controller;


  const CustomSearchWidget({
    super.key,
    required this.hintText,
    this.prefixIcon,
    required this.controller,
  });

  @override
  State<CustomSearchWidget> createState() => _CustomSearchWidgetState();
}

class _CustomSearchWidgetState extends State<CustomSearchWidget> {
  get searchController => TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(

      // Add shadow

      borderRadius: BorderRadius.circular(10), // Border radius for shadow
      child:  SizedBox(
        width: MediaQuery.of(context).size.width*0.8,

        child: TextField(
          cursorColor: AppColors.darkOrqaFonRangi,
          keyboardType: TextInputType.text,
          style: const TextStyle(
            fontSize: FontSize.size12,
            color: AppColors.kulrangYozuvRangi,
          ),
          controller: searchController,
          decoration: InputDecoration(
            // labelText: widget.labelText,
            labelStyle: const TextStyle(
              color: AppColors.kulrangYozuvRangi,
            ),
           hintText:  widget.hintText,
            prefixIcon: widget.prefixIcon,
            filled: true,
            fillColor: AppColors.searchWidgetRangi,
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),
    );
  }
}