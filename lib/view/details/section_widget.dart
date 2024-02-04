import 'package:flutter/material.dart';
import 'package:job_task/data/local/db/app_db.dart';
import 'package:job_task/res/compunent/common_widgets.dart';
import 'package:job_task/utils/utils.dart';

class SectionWidgets{

  CommonWidgets commonWidgets = CommonWidgets();


  Widget sectionColumn({required List<Widget> children,}){
    return commonWidgets.customCardContainer(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: children
        ));
  }

  Widget sectionNumberOnly({required String number}){
    return
      commonWidgets.customCardContainer(
        padding: const EdgeInsets.all(12),
          child: commonWidgets.textWidget(
              text: number,
              color: AppColor
                  .primaryColor,
              fontSize: 14,
              fontWeight: FontWeight.w800
          ),
    );
  }

  Widget sectionNumberAndTitle({required String number, required String title}){
    return sectionColumn(
      children: [
        RichText(
            text: TextSpan(
                text: number,
                style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w800,
                    color: AppColor
                        .primaryColor),
                children: [
                  TextSpan(
                      text: ' $title',
                      style: const TextStyle(
                          color: AppColor.titleBlack))
                ])),
      ],
    );
  }


  Widget sectionContainerAll({required String number, required String title, required String subtitle}){
    return sectionColumn(
      children: [
      sectionNumberAndTitle(number: number, title: title),
      const Divider(
        thickness: 1,
        color: AppColor.dividerColor,
      ),
      commonWidgets.textWidget(
          text: subtitle,
          color: AppColor.subtitleBlack,
          fontSize: 12,
        fontWeight: FontWeight.w400
      )
    ],
    );
  }

  Widget sectionContainer({required SectionData sectionData, required String number, required String title, required String subtitle}){


    if(sectionData.title.contains('অধ্যায়ঃ')){
      return sectionNumberOnly(number: number);
    }else if(sectionData.preface.isEmpty){
      return sectionNumberAndTitle(number: number, title: title);
    }else{
      return sectionContainerAll(number: number, title: title, subtitle: subtitle);
    }
  }



}