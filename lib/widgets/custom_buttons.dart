import 'package:flutter/material.dart';

import '../utlis/colors.dart';

class CustomButton extends StatefulWidget {
  final String buttonData;
  final double? buttonWidth;
  final void Function() onTap;

  const CustomButton({super.key, required this.buttonData, this.buttonWidth, required this.onTap});

  @override
  State<CustomButton> createState() => _CutomButtonState();
}

class _CutomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        width: widget.buttonWidth ?? 00,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),

        decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: AppColors.primaryColor.withOpacity(0.2),
                blurRadius: 10,
                spreadRadius: 5,
                offset: const Offset(5, 7),
              )
            ]
        ),
        child:  Center(
            child: Text(
              widget.buttonData,
              style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: Colors.white),
            )),

      ),
    );
  }
}
