import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:hexagon/hexagon.dart';
import 'package:job_task/utils/utils.dart';

class CommonWidgets{

  Widget textWidget({required String text, Color? color, double? fontSize, FontWeight? fontWeight}){
    return Text(
      text,
      style:  TextStyle(
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight
      ),);
  }

  Widget customCard({required String title,
    required String subTitle,
    required String leadingText,
    String? trailingTitle, String?
    trailingSubtitle,
    VoidCallback? onTap,
    Color? leadingIconColor}){
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(8),
        width: Get.width * 1,
        height:  Get.height * .12,
        decoration: BoxDecoration(
          color: AppColor.cardColor,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Row(
          children: [
            SizedBox(
              width: Get.width * .12,
              child: HexagonWidget.pointy(
                width: Get.width * .10,
                color: leadingIconColor,
                cornerRadius: 10,
                child: textWidget(
                    text: leadingText,
                    fontSize: 20,
                    color: AppColor.cartTitleColor),
              ),

            ),
            Gap(Get.width * .05),
            SizedBox(
              width: Get.width * .55 ,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  textWidget(text: title, color: AppColor.cartTitleColor, fontSize: 16, fontWeight: FontWeight.bold),
                  textWidget(text: subTitle, color: AppColor.cardSubtitleColor, fontSize: 12, fontWeight: FontWeight.normal),
                ],
              ),
            ),
            Gap(Get.width * .05),
        SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              textWidget(text: trailingTitle ?? '', color: AppColor.cartTitleColor, fontSize: 16, fontWeight: FontWeight.bold),
              textWidget(text: trailingSubtitle ?? '', color: AppColor.cardTrailSubtitleColor, fontSize: 12, fontWeight: FontWeight.normal),
            ],
          ),
        ),
        ]
      )
      ),
    );
  }

}