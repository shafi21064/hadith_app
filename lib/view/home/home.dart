import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_task/data/local/db/app_db.dart';
import 'package:job_task/data/local/entity/chapter_entity.dart';
import 'package:job_task/res/compunent/common_widgets.dart';
import 'package:job_task/view/chapter/chapter.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  AppDb _appDb = AppDb();

  @override
  void initState() {
     _appDb.getBooks;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: FutureBuilder(
           future: _appDb.getBooks,
           builder: (context, snapshot){
             if(snapshot.connectionState == ConnectionState.waiting){
               return const Center(child: CircularProgressIndicator());
             }else if(snapshot.hasData){
               // return Text(snapshot.data!.first.bookName);
               return ListView.builder(
                 itemCount: snapshot.data!.length,
                 itemBuilder: (context, index) {
                   Book book = snapshot.data![index];
                   int colorValue = int.parse('0xFF${book.colorCode.replaceAll('#', '')}');
                   return CommonWidgets().customCard(
                     onTap: ()=> Get.to(ChapterScreen(book: book,)),
                     leadingText: book.abvrCode,
                     leadingIconColor: Color(colorValue),
                     title: book.title,
                     subTitle: book.titleAr,
                     trailingTitle: book.numberOfHadith.toString(),
                     trailingSubtitle: 'হাদিস'
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
