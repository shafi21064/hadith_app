import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_task/data/local/db/app_db.dart';
import 'package:job_task/res/compunent/common_widgets.dart';
import 'package:job_task/utils/utils.dart';

class ChapterScreen extends StatefulWidget {
  final Book book;
  const ChapterScreen({super.key,required this.book});

  @override
  State<ChapterScreen> createState() => _ChapterScreenState();
}

class _ChapterScreenState extends State<ChapterScreen> {

  AppDb _appDb = AppDb();

  @override
  void initState() {
    _appDb.getChapters(widget.book.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.cardColor,
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Get.back();
          },
            child: Image.asset('assets/icons/back.png')),
        title: CommonWidgets().textWidget(
            text: widget.book.title,
            color: AppColor.cartTitleColor),
        backgroundColor: AppColor.cardColor,
      ),
      body: Container(
        padding: const EdgeInsets.all(8),
        height: Get.height * 1,
        width: Get.width * 1,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
              color: AppColor.backgroundColor
        ),
        child: FutureBuilder(
          future: _appDb.getChapters(widget.book.id),
          builder: (context, snapshot){
            if(snapshot.connectionState == ConnectionState.waiting){
              return const Center(child: CircularProgressIndicator());
            }else if(snapshot.hasData){
              // return Text(snapshot.data!.first.bookName);
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  ChapterData chapterData = snapshot.data![index];
                  return CommonWidgets().customCard(
                      //onTap: ()=> Get.to(ChapterScreen(book: book,)),
                      leadingText: chapterData.number.toString(),
                      leadingIconColor: AppColor.chapterLeadingIconColor,
                      title: chapterData.title,
                      subTitle: 'হাদিসের রেঞ্জঃ ${chapterData.hadithRange}',
                      //trailingTitle: book.numberOfHadith.toString(),
                      //trailingSubtitle: 'হাদিস'
                  );
                },
              );
            }else if(snapshot.hasError){
              return Text('Error: ${snapshot.error}');
            }else {
              return const Text('No data');
            }
          },

        ),
      ),
    );
  }
}
