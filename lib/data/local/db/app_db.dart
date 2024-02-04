import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:job_task/data/local/entity/books_entity.dart';
import 'package:job_task/data/local/entity/chapter_entity.dart';
import 'package:job_task/data/local/entity/hadith_entity.dart';
import 'package:job_task/data/local/entity/section_entity.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:sqlite3/sqlite3.dart';
import 'package:sqlite3_flutter_libs/sqlite3_flutter_libs.dart';
part 'app_db.g.dart';

LazyDatabase _openConnection() {
  return LazyDatabase(() async {

    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));

    if (!await file.exists()) {
      final blob = await rootBundle.load('assets/db/hadith.db');
      final buffer = blob.buffer;
      await file.writeAsBytes(buffer.asUint8List(blob.offsetInBytes, blob.lengthInBytes));
    }

    print(await file.exists());
    print(await file.length());


    if (Platform.isAndroid) {
      await applyWorkaroundToOpenSqlite3OnOldAndroidVersions();
    }


    final cachebase = (await getTemporaryDirectory()).path;

    sqlite3.tempDirectory = cachebase;

    return NativeDatabase.createInBackground(file);
  });
}


@DriftDatabase(tables: [
  Books,
  Chapter,
  Hadith,
  Section
])

class AppDb extends _$AppDb{

  AppDb() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  Future<List<Book>> get getBooks => select(books).get();

  Future<List<ChapterData>> getChapters(int booksId) async{
    return await (select(chapter)..where((tbl) => tbl.bookId.equals(booksId))).get();
  }


  Future<List<SectionData>> getSection(int booksId, int chapterId) async{
    return await (select(section)..where((tbl) => tbl.bookId.equals(booksId) & tbl.chapterId.equals(chapterId))).get();
  }

  Future<List<HadithData>> getHadith(int booksId, int chapterId, int sectionId) async{
    return await (select(hadith)..where((tbl) => tbl.bookId.equals(booksId) & tbl.chapterId.equals(chapterId) & tbl.sectionId.equals(sectionId))).get();
  }
  
}