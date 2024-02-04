import 'package:get/get.dart';
import 'package:job_task/data/local/db/app_db.dart';

class DbController extends GetxController{

  RxList<Book> bookList = <Book> [].obs;
  RxList<ChapterData> chapterList = <ChapterData> [].obs;
  RxList<HadithData> hadithList = <HadithData> [].obs;
  RxList<SectionData> sectionList = <SectionData> [].obs;
  RxList combinedList =  [].obs;
  bool sectionHasData = false;

  final _appDb = Get.find<AppDb>();

  @override
  void onInit() {
    getBooksList();
    super.onInit();
  }

  getBooksList() async {
    bookList.value = await _appDb.getBooks;
  }

  getChapterList(int booksId)async{
    chapterList.value = await _appDb.getChapters(booksId);
  }

  getHadithList(int booksId, int chapterId, int sectionId)async{
    hadithList.value = await _appDb.getHadith(booksId, chapterId, sectionId);
    print(booksId);
  }

  getSectionList(int booksId, int chapterId)async{
    sectionList.value = await _appDb.getSection(booksId, chapterId);
    print(booksId);
  }

  // getCombinedList(int booksId, int chapterId)async{
  //   getHadithList(booksId, chapterId);
  //   getSectionList(booksId, chapterId);
  //   combinedList.value = [...sectionList, ...hadithList] ;
  // }

  showSection(){
    if(sectionList.isNotEmpty){
      sectionHasData = true;
    }
  }

}