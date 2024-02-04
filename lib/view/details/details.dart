import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:job_task/controller/db_controller.dart';
import 'package:job_task/data/local/db/app_db.dart';
import 'package:job_task/res/compunent/common_widgets.dart';
import 'package:job_task/res/compunent/custom_app_bar.dart';
import 'package:job_task/utils/utils.dart';
import 'package:job_task/view/details/local_widget.dart';

class DetailsScreen extends StatelessWidget {
  final ChapterData chapterData;
  final Book book;
  DetailsScreen({super.key, required this.chapterData, required this.book});

  final dbController = Get.put(DbController());
  final customWidget = CommonWidgets();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.cardColor,
      appBar: CustomAppBar(
        title: book.title,
        subtitle: chapterData.title,
      ),
      body: customWidget.customBackgraound(
        child: Obx((){
            if (dbController.sectionList.isEmpty) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return ListView.builder(
                  shrinkWrap: true,
                  itemCount: dbController.sectionList.length,
                  itemBuilder: (context, index) {
                    SectionData sectionData = dbController.sectionList[index];
                    return Column(
                      children: [
                        DetailsWidgets().sectionContainer(
                            sectionData: sectionData,
                            number: sectionData.number,
                            title: sectionData.title,
                            subtitle: sectionData.preface),
                        FutureBuilder(
                            future: dbController.getHadithList(
                                sectionData.bookId,
                                chapterData.chapterId,
                                sectionData.sectionId),
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
                                                SizedBox(
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
                                                              color: AppColor
                                                                  .cartTitleColor),
                                                          customWidget.textWidget(
                                                              text:
                                                                  'হাদিসঃ ${hadithData.hadithId}',
                                                              color: AppColor
                                                                  .chapterLeadingIconColor)
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
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
                                                                  color: AppColor
                                                                      .cartTitleColor,
                                                                  fontSize: 9)),
                                                      InkWell(
                                                        onTap: (){
                                                          customWidget.showModalBottomSheetHere(context: context);
                                                        },
                                                        child: SizedBox(
                                                          width: 25,
                                                          child: SvgPicture.asset(
                                                            'assets/icons/more.svg',
                                                            color: AppColor
                                                                .cartTitleColor,
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                            Gap(Get.height * .02),
                                            customWidget.textWidget(
                                                text: hadithData.ar,
                                              fontSize: 16,
                                              color: AppColor.cartTitleColor
                                            ),
                                            Gap(Get.height * .03),
                                            customWidget.textWidget(
                                                text: '${hadithData.narrator} থেকে বর্ণিতঃ',
                                              color: AppColor.chapterLeadingIconColor,
                                              fontSize: 16
                                            ),
                                            Gap(Get.height * .01),
                                            customWidget.textWidget(
                                                text: hadithData.bn,
                                                color: AppColor.cardSubtitleColor,
                                                fontSize: 15
                                            ),
                                          ],
                                        ));
                                  });
                            })
                      ],
                    );
                  });
            }
          },
        ),
      ),
    );
  }
}
