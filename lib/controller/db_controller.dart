import 'package:get/get.dart';
import 'package:job_task/data/local/db/app_db.dart';

class DbController extends GetxController{

  RxList<Book> bookList = <Book> [].obs;
  RxList<ChapterData> chapterList = <ChapterData> [].obs;
  RxList<HadithData> hadithList = <HadithData> [].obs;
  RxList<SectionData> sectionList = <SectionData> [].obs;

  final _appDb = Get.find<AppDb>();

  @override
  void onInit() {
    getBooksList();
    super.onInit();
  }

  Future getBooksList() async {
    return bookList.value = await _appDb.getBooks;
  }

  Future getChapterList(int booksId)async{
    return chapterList.value = await _appDb.getChapters(booksId);
  }

  Future getHadithList(int booksId, int chapterId, int sectionId)async{
    return hadithList.value = await _appDb.getHadith(booksId, chapterId, sectionId);
  }

  Future getSectionList(int booksId, int chapterId)async{
    return sectionList.value = await _appDb.getSection(booksId, chapterId);
  }


}