
import 'package:api_car_hometask/src/core/style/app_colors.dart';
import 'package:flutter/material.dart';

class SignButtonWidget extends StatefulWidget {
  final String text;
  final Color color;
  final VoidCallback onPressed;
  const SignButtonWidget({super.key,
    required this.text,
    required this.color,
    required this.onPressed,
  });
  @override
  State<SignButtonWidget> createState() => _SignButtonWidgetState();
}
class _SignButtonWidgetState extends State<SignButtonWidget> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return ElevatedButton(


      onPressed: widget.onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: widget.color,
        fixedSize: Size(screenWidth * 0.9, 60), // Fixed size
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ), // Fixed border radius
        ),
      ),
      child: Text(
        widget.text,
        style: const TextStyle(
          color: AppColors.darkOrqaFonRangi,
          fontSize: 16,
        ),
      ),
    );
  }
}
