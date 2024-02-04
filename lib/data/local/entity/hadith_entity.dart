import 'package:drift/drift.dart';

class Hadith extends Table{
  IntColumn get id => integer().named('id')();
  IntColumn get bookId => integer().named('book_id')();
  TextColumn get bookName => text().named('book_name')();
  IntColumn get chapterId => integer().named('chapter_id')();
  IntColumn get sectionId => integer().named('section_id')();
  TextColumn get hadithKey => text().named('hadith_key')();
  IntColumn get hadithId => integer().named('hadith_id')();
  TextColumn get narrator => text().named('narrator')();
  TextColumn get bn => text().named('bn')();
  TextColumn get ar => text().named('ar')();
  TextColumn get arDiacless => text().named('ar_diacless')();
  TextColumn get note => text().named('note')();
  IntColumn get gradeId => integer().named('grade_id')();
  TextColumn get grade => text().named('grade')();
  TextColumn get gradeColor => text().named('grade_color')();
}
