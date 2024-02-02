import 'package:drift/drift.dart';

class Chapter extends Table{
  IntColumn get id => integer()();
  IntColumn get chapterId => integer().named('chapter_id')();
  IntColumn get bookId => integer().named('book_id')();
  TextColumn get title => text().named('title')();
  IntColumn get number => integer().named('number')();
  TextColumn get hadithRange => text().named('hadis_range')();
  TextColumn get bookName => text().named('book_name')();
}
