// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:job_task/controller/db_controller.dart';
// import 'package:job_task/controller/db_controller_two.dart';
// import 'package:job_task/data/local/db/app_db.dart';
// import 'package:job_task/res/compunent/common_widgets.dart';
// import 'package:job_task/res/compunent/custom_app_bar.dart';
// import 'package:job_task/utils/utils.dart';
// import 'package:job_task/view/details/details.dart';
// import 'package:job_task/view/details/details_two.dart';
//
// class ChapterScreen extends StatelessWidget {
//   final Book book;
//   ChapterScreen({super.key,required this.book});
//
//   final dbController = Get.put(DbControllerTwo());
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColor.cardColor,
//       appBar: CustomAppBar(
//         title: book.title,
//         subtitle: '${book.numberOfHadith} টি হাদিস',
//       ),
//       body: CommonWidgets().customBackgraound(
//           child: Obx((){
//             if(dbController.chapterList.isEmpty){
//               return const Center(child: CircularProgressIndicator());
//             }else if(dbController.chapterList.isNotEmpty){
//               // return Text(snapshot.data!.first.bookName);
//               return ListView.builder(
//                 itemCount: dbController.chapterList.length,
//                 itemBuilder: (context, index) {
//                   ChapterData chapterData = dbController.chapterList[index];
//                   return CommonWidgets().customCard(
//                     onTap: (){
//                       // Get.to(()=> DetailsScreenTwo(
//                       //   chapterData: chapterData,
//                       //   book: book,
//                       // ));
//                       dbController.setIndex(index);
//                       // dbController.getHadithList(chapterData.bookId, chapterData.chapterId,
//                       //     dbController.sectionList[index].sectionId);
//
//                       // dbController.getCombinedList(chapterData.bookId, chapterData.chapterId);
//                       print('id = ${chapterData.bookId} and ${chapterData.chapterId}');
//                     },
//                     leadingText: chapterData.number.toString(),
//                     leadingIconColor: AppColor.chapterLeadingIconColor,
//                     title: chapterData.title,
//                     subTitle: 'হাদিসের রেঞ্জঃ ${chapterData.hadithRange}',
//                   );
//                 },
//               );
//             }else {
//               return const Text('No data');
//             }
//           })
//
//       ),
//     );
//   }
// }
