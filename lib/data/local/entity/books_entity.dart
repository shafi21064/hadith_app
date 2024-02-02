
import 'package:drift/drift.dart';

class Books extends Table{
  IntColumn get id => integer()();
  TextColumn get title => text()();
  TextColumn get titleAr => text().named('title_ar')();
  IntColumn get numberOfHadith => integer().named('number_of_hadis')();
  TextColumn get abvrCode => text().named('abvr_code')();
  TextColumn get bookName => text().named('book_name')();
  TextColumn get bookDescr => text().named('book_descr')();
  TextColumn get colorCode => text().named('color_code')();
}