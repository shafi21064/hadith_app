import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_task/controller/db_controller.dart';
import 'package:job_task/data/local/db/app_db.dart';
import 'package:job_task/res/compunent/common_widgets.dart';
import 'package:job_task/res/compunent/custom_app_bar.dart';
import 'package:job_task/utils/utils.dart';
import 'package:job_task/view/details/details.dart';

class ChapterScreen extends StatelessWidget {
  final Book book;
  ChapterScreen({super.key,required this.book});

  final dbController = Get.put(DbController());
  final customWidget = CommonWidgets();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      appBar: CustomAppBar(
        title: book.title,
        subtitle: '${book.numberOfHadith} টি হাদিস',
      ),
      body: customWidget.customBackgraound(
          child: Obx((){
          if(dbController.chapterList.isEmpty){
            return customWidget.progressBar();
          }else if(dbController.chapterList.isNotEmpty){
            return ListView.builder(
              itemCount: dbController.chapterList.length,
              itemBuilder: (context, index) {
                ChapterData chapterData = dbController.chapterList[index];
                return customWidget.customCard(
                  onTap: (){
                    Get.to(()=> DetailsScreen(
                        chapterData: chapterData,
                      book: book,
                    ));
                    dbController.getSectionList(chapterData.bookId, chapterData.chapterId);
                  },
                  leadingText: chapterData.number.toString(),
                  leadingIconColor: AppColor.primaryColor,
                  title: chapterData.title,
                  subTitle: 'হাদিসের রেঞ্জঃ ${chapterData.hadithRange}',
                );
              },
            );
          }else {
            return const Text('No data');
          }
        })

      ),
    );
  }
}
