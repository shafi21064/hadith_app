import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:job_task/controller/db_controller.dart';
import 'package:job_task/data/local/db/app_db.dart';
import 'package:job_task/res/compunent/common_widgets.dart';
import 'package:job_task/utils/utils.dart';


class HadithWidget{
  final CommonWidgets customWidget = CommonWidgets();

  Widget iconAndTitle({required Book book, required HadithData hadithData}){
    return SizedBox(
      child: Row(
        children: [
          customWidget.customHexagon(
              leadingIconColor:
              Color(int.parse(
                  ('0xFF${book.colorCode.replaceAll('#', '')}'))),
              leadingText:
              book.abvrCode),
          Gap(Get.width * .03),
          Column(
            crossAxisAlignment:
            CrossAxisAlignment
                .start,
            children: [
              customWidget.textWidget(
                  text: book.title,
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: AppColor
                      .titleBlack),
              customWidget.textWidget(
                  text:
                  'হাদিসঃ ${hadithData.hadithId}',
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: AppColor
                      .subtitleBlack)
            ],
          ),
        ],
      ),
    );
  }

  Widget gradeAndMore({required BuildContext context, required HadithData hadithData}){
    return SizedBox(
      child: Row(
        children: [
          Container(
              alignment:
              Alignment.center,
              height: 23,
              width: 52,
              decoration: BoxDecoration(
                  color: Color(int
                      .parse(
                      ('0xFF${hadithData.gradeColor.replaceAll('#', '')}'))),
                  borderRadius:
                  BorderRadius
                      .circular(
                      13)),
              child: customWidget
                  .textWidget(
                  text:
                  hadithData
                      .grade,
                  fontWeight: FontWeight.w500,
                  color: AppColor
                      .whiteColor,
                  fontSize: 9)),
          InkWell(
            onTap: (){
              customWidget.showModalBottomSheetHere(context: context);
            },
            child: SizedBox(
              width: 25,
              child: SvgPicture.asset(
                'assets/icons/more.svg',
                color: AppColor.textBlack.withOpacity(.3),
              ),
            ),
          )
        ],
      ),
    );
  }


  Widget hadithWidget({required DbController dbController, required Future future, required Book book}){
    return FutureBuilder(
        future:future,
        builder: (context, snap) {
          return ListView.builder(
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemCount: dbController.hadithList.length,
              itemBuilder: (context, index) {
                HadithData hadithData =
                dbController.hadithList[index];
                return customWidget.customCardContainer(
                    margin: const EdgeInsets.symmetric(
                        vertical: 8),
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            iconAndTitle(book: book, hadithData: hadithData),
                            gradeAndMore(context: context, hadithData: hadithData)
                          ],
                        ),
                        Gap(Get.height * .02),
                        customWidget.textWidget(
                            text: hadithData.ar,
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: AppColor.textBlack
                        ),
                        Gap(Get.height * .03),
                        customWidget.textWidget(
                            text: '${hadithData.narrator} থেকে বর্ণিতঃ',
                            color: AppColor.primaryColor,
                            fontSize: 16
                        ),
                        Gap(Get.height * .01),
                        customWidget.textWidget(
                            text: hadithData.bn,
                            color: AppColor.textBlack,
                            fontSize: 15
                        ),
                      ],
                    ));
              });
        });
  }
}