import 'package:flutter/material.dart';

import '../../utlis/colors.dart';
Widget homeAppBar(Size size) {
  return Container(
    padding: const EdgeInsets.only(top: 50, bottom: 15, left: 15, right: 15),
    height: size.height * 0.28,
    width: size.width,
    decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              AppColors.secondaryColor,
              AppColors.primaryColor,
            ]),
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(30),
          bottomLeft: Radius.circular(30),
        )),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column( crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Hello,',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  'Good Morning',
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.6),
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
              ],),
            Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  shape: BoxShape.circle,
                ),
                child: Stack(
                  children: [
                    const Icon(Icons.notifications,color: Colors.white,),
                    Positioned(
                      top: 2,
                      right: 2,
                      child: Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: AppColors.primaryColor.withOpacity(0.6),
                              width: 1.5,
                            )
                        ),
                      ),
                    )
                  ],
                )
            ),

          ],),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 7,horizontal: 4),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),

          ),
          child: TextFormField(
            cursorColor: AppColors.primaryColor,
            decoration: InputDecoration(

                hintText: "Search your topic",
                hintStyle: TextStyle(color: Colors.black.withOpacity(0.3)),
                border: InputBorder.none,
                suffixIcon: const Icon(Icons.mic_none_outlined),
                suffixIconColor: AppColors.primaryColor,
                prefixIcon: Icon(Icons.search_outlined,color: Colors.black.withOpacity(0.6),)
            ),

          ),

        ),
      ],
    ),
  );
}