// import 'package:get/get.dart';
// import 'package:job_task/data/local/db/app_db.dart';
//
// class DbControllerTwo extends GetxController{
//
//   RxList<Book> bookList = <Book> [].obs;
//   RxList<ChapterData> chapterList = <ChapterData> [].obs;
//   RxList<HadithData> hadithList = <HadithData> [].obs;
//   RxList<SectionData> sectionList = <SectionData> [].obs;
//   RxList combinedList =  [].obs;
//   bool sectionHasData = false;
//   int index = 0;
//
//   final _appDb = Get.find<AppDb>();
//
//   @override
//   void onInit() {
//     getBooksList();
//     getChapterList();
//     getSectionList();
//     getHadithList();
//     super.onInit();
//   }
//
//   setIndex(int value){
//     index = value;
//   }
//
//   getBooksList() async {
//     bookList.value = await _appDb.getBooks;
//   }
//
//   getChapterList()async{
//     chapterList.value = await _appDb.getChapters(bookList[index].id);
//   }
//
//   getSectionList()async{
//     sectionList.value = await _appDb.getSection(chapterList[index].bookId, chapterList[index].chapterId);
//   }
//
//   getHadithList()async{
//     hadithList.value = await _appDb.getHadith(sectionList[index].bookId, sectionList[index].chapterId, sectionList[index as int].sectionId);
//   }
//
//
//
//   // getCombinedList(int booksId, int chapterId)async{
//   //   getHadithList(booksId, chapterId);
//   //   getSectionList(booksId, chapterId);
//   //   combinedList.value = [...sectionList, ...hadithList] ;
//   // }
//
//   showSection(){
//     if(sectionList.isNotEmpty){
//       sectionHasData = true;
//     }
//   }
//
// }