import 'package:drift/drift.dart';

class Section extends Table{
  IntColumn get id => integer().named('id')();
  IntColumn get bookId => integer().named('book_id')();
  IntColumn get bookName => integer().named('book_name')();
  IntColumn get sectionId => integer().named('section_id')();
  TextColumn get title => text().named('title')();
  TextColumn get preface => text().named('preface')();
  IntColumn get number => integer().named('number')();
  IntColumn get sortOrder => integer().named('sort_order')();
}