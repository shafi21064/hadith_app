import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_task/controller/db_controller.dart';
import 'package:job_task/data/local/db/app_db.dart';
import 'package:job_task/res/compunent/common_widgets.dart';
import 'package:job_task/res/compunent/custom_app_bar.dart';
import 'package:job_task/utils/utils.dart';
import 'package:job_task/view/chapter/chapter_screen.dart';


class Home extends StatelessWidget {
    Home({super.key});

  final dbController = Get.put(DbController());
  final customWidget = CommonWidgets();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'বইয়ের তালিকা',
        subtitle: '',
        customBackButton: false,
        center: true,
      ),
      backgroundColor: AppColor.primaryColor,
      body: customWidget.customBackgraound(
        child: Obx(() {
          if(dbController.bookList.isEmpty){
            return customWidget.progressBar();
          }else if(dbController.bookList.isNotEmpty){
            return ListView.builder(
              itemCount: dbController.bookList.length,
              itemBuilder: (context, index) {
                Book book = dbController.bookList[index];
                int colorValue = int.parse('0xFF${book.colorCode.replaceAll('#', '')}');
                return customWidget.customCard(
                    onTap: (){
                      Get.to(()=> ChapterScreen(book: book));
                      dbController.getChapterList(book.id);
                    },
                    leadingText: book.abvrCode,
                    leadingIconColor: Color(colorValue),
                    title: book.title,
                    subTitle: book.titleAr,
                    trailingTitle: book.numberOfHadith.toString(),
                    trailingSubtitle: 'হাদিস'
                );
              },
            );
          }else {
            return const Center(child: Text('No data'));
          }
        }),
      )
    );
  }
}
