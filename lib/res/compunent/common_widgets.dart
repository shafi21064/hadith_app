import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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

  Widget customCardContainer({EdgeInsets? margin, required EdgeInsets padding, required Widget child, }){
    return Container(
      margin: margin,
      padding: padding,
      width: Get.width * 1,
      decoration: BoxDecoration(
        color: AppColor.whiteColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
    );
  }

  Widget customHexagon({required Color leadingIconColor, required String leadingText}){
    return HexagonWidget.pointy(
      width: Get.width * .10,
      color: leadingIconColor,
      cornerRadius: 10,
      child: textWidget(
          text: leadingText,
          fontSize: 18,
          color: AppColor.whiteColor),
    );
  }

  Widget progressBar(){
    return const Center(child: CircularProgressIndicator(color: AppColor.primaryColor,));
  }

  Widget bottomSheetLogoAndIcon({required String icon, required String text}){
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          SvgPicture.asset(icon),
          Gap(Get.width * .04),
          textWidget(
              text: text,
            fontSize: 14,
            color: AppColor.bottomSheetText
          )
        ],
      ),
    );
  }

  void showModalBottomSheetHere({required BuildContext context}) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          padding: const EdgeInsets.all(20),
          height: Get.height * .54,
          decoration: BoxDecoration(
            color: AppColor.bottomSheetColor,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(20))
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  textWidget(
                      text: 'More Option',
                    color: AppColor.bottomSheetTitle,
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                  ),
                  InkWell(
                    onTap: (){
                      Get.back();
                    },
                    child: SvgPicture.asset('assets/icons/cross.svg', color: AppColor.bottomSheetText,),
                  )
                ],
              ),
               Gap(Get.height * .02),
               bottomSheetLogoAndIcon(
                   icon: 'assets/icons/plane.svg',
                   text: 'Go To Main Hadith'),
              bottomSheetLogoAndIcon(
                  icon: 'assets/icons/bookmark.svg',
                  text: 'Add to Collection'),
              bottomSheetLogoAndIcon(
                  icon: 'assets/icons/copy.svg',
                  text: 'Bangla Copy'),
              bottomSheetLogoAndIcon(
                  icon: 'assets/icons/copy.svg',
                  text: 'English Copy'),
              bottomSheetLogoAndIcon(
                  icon: 'assets/icons/copy.svg',
                  text: 'Arabic Copy'),
              bottomSheetLogoAndIcon(
                  icon: 'assets/icons/frame.svg',
                  text: 'Add Hifj'),
              bottomSheetLogoAndIcon(
                  icon: 'assets/icons/frame.svg',
                  text: 'Add Note'),
              bottomSheetLogoAndIcon(
                  icon: 'assets/icons/share.svg',
                  text: 'Share'),
              bottomSheetLogoAndIcon(
                  icon: 'assets/icons/exclamation.svg',
                  text: 'Report'),
            ],
          )
        );
      },
    );
  }

  Widget customCard({required String title,
    required String subTitle,
    required String leadingText,
    String? trailingTitle, String?
    trailingSubtitle,
    VoidCallback? onTap,
    required Color leadingIconColor}){
    return InkWell(
      onTap: onTap,
      child: customCardContainer(
        margin: const EdgeInsets.only(top:  8),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
        child: Row(
          children: [
            SizedBox(
              width: Get.width * .12,
              child: customHexagon(
                  leadingIconColor: leadingIconColor,
                  leadingText: leadingText)
            ),
            Gap(Get.width * .05),
            SizedBox(
              width: Get.width * .55 ,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  textWidget(text: title, color: AppColor.titleBlack, fontSize: 16, fontWeight: FontWeight.bold),
                  textWidget(text: subTitle, color: AppColor.subtitleBlack, fontSize: 12, fontWeight: FontWeight.normal),
                ],
              ),
            ),
            Gap(Get.width * .05),
        SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              textWidget(text: trailingTitle ?? '', color: AppColor.titleBlack, fontSize: 16, fontWeight: FontWeight.bold),
              textWidget(text: trailingSubtitle ?? '', color: AppColor.subtitleBlack, fontSize: 12, fontWeight: FontWeight.normal),
            ],
          ),
        ),
        ]
      )
      ),
    );
  }

  Widget customBackgraound({required Widget child}){
    return Container(
      padding: const EdgeInsets.all(8),
      height: Get.height * 1,
      width: Get.width * 1,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
          color: AppColor.backgroundGrey
      ),
      child: child,
    );
  }

}