import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_task/controller/db_controller.dart';
import 'package:job_task/data/local/db/app_db.dart';
import 'package:job_task/res/compunent/common_widgets.dart';
import 'package:job_task/res/compunent/custom_app_bar.dart';
import 'package:job_task/utils/utils.dart';
import 'package:job_task/view/details/hadith_widget.dart';
import 'package:job_task/view/details/section_widget.dart';

class DetailsScreen extends StatelessWidget {
  final ChapterData chapterData;
  final Book book;
  DetailsScreen({super.key, required this.chapterData, required this.book});

  final dbController = Get.put(DbController());
  final customWidget = CommonWidgets();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      appBar: CustomAppBar(
        title: book.title,
        subtitle: chapterData.title,
      ),
      body: customWidget.customBackgraound(
        child: Obx((){
            if (dbController.sectionList.isEmpty) {
              return customWidget.progressBar();
            } else {
              return ListView.builder(
                  shrinkWrap: true,
                  itemCount: dbController.sectionList.length,
                  itemBuilder: (context, index) {
                    SectionData sectionData = dbController.sectionList[index];
                    return Column(
                      children: [
                        SectionWidgets().sectionContainer(
                            sectionData: sectionData,
                            number: sectionData.number,
                            title: sectionData.title,
                            subtitle: sectionData.preface),
                        HadithWidget().hadithWidget(
                            dbController: dbController,
                            future: dbController.getHadithList(
                                sectionData.bookId,
                                sectionData.chapterId,
                                sectionData.sectionId),
                            book: book)
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
