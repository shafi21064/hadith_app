// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_db.dart';

// ignore_for_file: type=lint
class $BooksTable extends Books with TableInfo<$BooksTable, Book> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BooksTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _titleArMeta =
      const VerificationMeta('titleAr');
  @override
  late final GeneratedColumn<String> titleAr = GeneratedColumn<String>(
      'title_ar', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _numberOfHadithMeta =
      const VerificationMeta('numberOfHadith');
  @override
  late final GeneratedColumn<int> numberOfHadith = GeneratedColumn<int>(
      'number_of_hadis', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _abvrCodeMeta =
      const VerificationMeta('abvrCode');
  @override
  late final GeneratedColumn<String> abvrCode = GeneratedColumn<String>(
      'abvr_code', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _bookNameMeta =
      const VerificationMeta('bookName');
  @override
  late final GeneratedColumn<String> bookName = GeneratedColumn<String>(
      'book_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _bookDescrMeta =
      const VerificationMeta('bookDescr');
  @override
  late final GeneratedColumn<String> bookDescr = GeneratedColumn<String>(
      'book_descr', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _colorCodeMeta =
      const VerificationMeta('colorCode');
  @override
  late final GeneratedColumn<String> colorCode = GeneratedColumn<String>(
      'color_code', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        title,
        titleAr,
        numberOfHadith,
        abvrCode,
        bookName,
        bookDescr,
        colorCode
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'books';
  @override
  VerificationContext validateIntegrity(Insertable<Book> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('title_ar')) {
      context.handle(_titleArMeta,
          titleAr.isAcceptableOrUnknown(data['title_ar']!, _titleArMeta));
    } else if (isInserting) {
      context.missing(_titleArMeta);
    }
    if (data.containsKey('number_of_hadis')) {
      context.handle(
          _numberOfHadithMeta,
          numberOfHadith.isAcceptableOrUnknown(
              data['number_of_hadis']!, _numberOfHadithMeta));
    } else if (isInserting) {
      context.missing(_numberOfHadithMeta);
    }
    if (data.containsKey('abvr_code')) {
      context.handle(_abvrCodeMeta,
          abvrCode.isAcceptableOrUnknown(data['abvr_code']!, _abvrCodeMeta));
    } else if (isInserting) {
      context.missing(_abvrCodeMeta);
    }
    if (data.containsKey('book_name')) {
      context.handle(_bookNameMeta,
          bookName.isAcceptableOrUnknown(data['book_name']!, _bookNameMeta));
    } else if (isInserting) {
      context.missing(_bookNameMeta);
    }
    if (data.containsKey('book_descr')) {
      context.handle(_bookDescrMeta,
          bookDescr.isAcceptableOrUnknown(data['book_descr']!, _bookDescrMeta));
    } else if (isInserting) {
      context.missing(_bookDescrMeta);
    }
    if (data.containsKey('color_code')) {
      context.handle(_colorCodeMeta,
          colorCode.isAcceptableOrUnknown(data['color_code']!, _colorCodeMeta));
    } else if (isInserting) {
      context.missing(_colorCodeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  Book map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Book(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      titleAr: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title_ar'])!,
      numberOfHadith: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}number_of_hadis'])!,
      abvrCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}abvr_code'])!,
      bookName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}book_name'])!,
      bookDescr: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}book_descr'])!,
      colorCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}color_code'])!,
    );
  }

  @override
  $BooksTable createAlias(String alias) {
    return $BooksTable(attachedDatabase, alias);
  }
}

class Book extends DataClass implements Insertable<Book> {
  final int id;
  final String title;
  final String titleAr;
  final int numberOfHadith;
  final String abvrCode;
  final String bookName;
  final String bookDescr;
  final String colorCode;
  const Book(
      {required this.id,
      required this.title,
      required this.titleAr,
      required this.numberOfHadith,
      required this.abvrCode,
      required this.bookName,
      required this.bookDescr,
      required this.colorCode});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['title'] = Variable<String>(title);
    map['title_ar'] = Variable<String>(titleAr);
    map['number_of_hadis'] = Variable<int>(numberOfHadith);
    map['abvr_code'] = Variable<String>(abvrCode);
    map['book_name'] = Variable<String>(bookName);
    map['book_descr'] = Variable<String>(bookDescr);
    map['color_code'] = Variable<String>(colorCode);
    return map;
  }

  BooksCompanion toCompanion(bool nullToAbsent) {
    return BooksCompanion(
      id: Value(id),
      title: Value(title),
      titleAr: Value(titleAr),
      numberOfHadith: Value(numberOfHadith),
      abvrCode: Value(abvrCode),
      bookName: Value(bookName),
      bookDescr: Value(bookDescr),
      colorCode: Value(colorCode),
    );
  }

  factory Book.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Book(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      titleAr: serializer.fromJson<String>(json['titleAr']),
      numberOfHadith: serializer.fromJson<int>(json['numberOfHadith']),
      abvrCode: serializer.fromJson<String>(json['abvrCode']),
      bookName: serializer.fromJson<String>(json['bookName']),
      bookDescr: serializer.fromJson<String>(json['bookDescr']),
      colorCode: serializer.fromJson<String>(json['colorCode']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'titleAr': serializer.toJson<String>(titleAr),
      'numberOfHadith': serializer.toJson<int>(numberOfHadith),
      'abvrCode': serializer.toJson<String>(abvrCode),
      'bookName': serializer.toJson<String>(bookName),
      'bookDescr': serializer.toJson<String>(bookDescr),
      'colorCode': serializer.toJson<String>(colorCode),
    };
  }

  Book copyWith(
          {int? id,
          String? title,
          String? titleAr,
          int? numberOfHadith,
          String? abvrCode,
          String? bookName,
          String? bookDescr,
          String? colorCode}) =>
      Book(
        id: id ?? this.id,
        title: title ?? this.title,
        titleAr: titleAr ?? this.titleAr,
        numberOfHadith: numberOfHadith ?? this.numberOfHadith,
        abvrCode: abvrCode ?? this.abvrCode,
        bookName: bookName ?? this.bookName,
        bookDescr: bookDescr ?? this.bookDescr,
        colorCode: colorCode ?? this.colorCode,
      );
  @override
  String toString() {
    return (StringBuffer('Book(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('titleAr: $titleAr, ')
          ..write('numberOfHadith: $numberOfHadith, ')
          ..write('abvrCode: $abvrCode, ')
          ..write('bookName: $bookName, ')
          ..write('bookDescr: $bookDescr, ')
          ..write('colorCode: $colorCode')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, title, titleAr, numberOfHadith, abvrCode,
      bookName, bookDescr, colorCode);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Book &&
          other.id == this.id &&
          other.title == this.title &&
          other.titleAr == this.titleAr &&
          other.numberOfHadith == this.numberOfHadith &&
          other.abvrCode == this.abvrCode &&
          other.bookName == this.bookName &&
          other.bookDescr == this.bookDescr &&
          other.colorCode == this.colorCode);
}

class BooksCompanion extends UpdateCompanion<Book> {
  final Value<int> id;
  final Value<String> title;
  final Value<String> titleAr;
  final Value<int> numberOfHadith;
  final Value<String> abvrCode;
  final Value<String> bookName;
  final Value<String> bookDescr;
  final Value<String> colorCode;
  final Value<int> rowid;
  const BooksCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.titleAr = const Value.absent(),
    this.numberOfHadith = const Value.absent(),
    this.abvrCode = const Value.absent(),
    this.bookName = const Value.absent(),
    this.bookDescr = const Value.absent(),
    this.colorCode = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  BooksCompanion.insert({
    required int id,
    required String title,
    required String titleAr,
    required int numberOfHadith,
    required String abvrCode,
    required String bookName,
    required String bookDescr,
    required String colorCode,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        title = Value(title),
        titleAr = Value(titleAr),
        numberOfHadith = Value(numberOfHadith),
        abvrCode = Value(abvrCode),
        bookName = Value(bookName),
        bookDescr = Value(bookDescr),
        colorCode = Value(colorCode);
  static Insertable<Book> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<String>? titleAr,
    Expression<int>? numberOfHadith,
    Expression<String>? abvrCode,
    Expression<String>? bookName,
    Expression<String>? bookDescr,
    Expression<String>? colorCode,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (titleAr != null) 'title_ar': titleAr,
      if (numberOfHadith != null) 'number_of_hadis': numberOfHadith,
      if (abvrCode != null) 'abvr_code': abvrCode,
      if (bookName != null) 'book_name': bookName,
      if (bookDescr != null) 'book_descr': bookDescr,
      if (colorCode != null) 'color_code': colorCode,
      if (rowid != null) 'rowid': rowid,
    });
  }

  BooksCompanion copyWith(
      {Value<int>? id,
      Value<String>? title,
      Value<String>? titleAr,
      Value<int>? numberOfHadith,
      Value<String>? abvrCode,
      Value<String>? bookName,
      Value<String>? bookDescr,
      Value<String>? colorCode,
      Value<int>? rowid}) {
    return BooksCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      titleAr: titleAr ?? this.titleAr,
      numberOfHadith: numberOfHadith ?? this.numberOfHadith,
      abvrCode: abvrCode ?? this.abvrCode,
      bookName: bookName ?? this.bookName,
      bookDescr: bookDescr ?? this.bookDescr,
      colorCode: colorCode ?? this.colorCode,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (titleAr.present) {
      map['title_ar'] = Variable<String>(titleAr.value);
    }
    if (numberOfHadith.present) {
      map['number_of_hadis'] = Variable<int>(numberOfHadith.value);
    }
    if (abvrCode.present) {
      map['abvr_code'] = Variable<String>(abvrCode.value);
    }
    if (bookName.present) {
      map['book_name'] = Variable<String>(bookName.value);
    }
    if (bookDescr.present) {
      map['book_descr'] = Variable<String>(bookDescr.value);
    }
    if (colorCode.present) {
      map['color_code'] = Variable<String>(colorCode.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BooksCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('titleAr: $titleAr, ')
          ..write('numberOfHadith: $numberOfHadith, ')
          ..write('abvrCode: $abvrCode, ')
          ..write('bookName: $bookName, ')
          ..write('bookDescr: $bookDescr, ')
          ..write('colorCode: $colorCode, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ChapterTable extends Chapter with TableInfo<$ChapterTable, ChapterData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ChapterTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _chapterIdMeta =
      const VerificationMeta('chapterId');
  @override
  late final GeneratedColumn<int> chapterId = GeneratedColumn<int>(
      'chapter_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _bookIdMeta = const VerificationMeta('bookId');
  @override
  late final GeneratedColumn<int> bookId = GeneratedColumn<int>(
      'book_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _numberMeta = const VerificationMeta('number');
  @override
  late final GeneratedColumn<int> number = GeneratedColumn<int>(
      'number', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _hadithRangeMeta =
      const VerificationMeta('hadithRange');
  @override
  late final GeneratedColumn<String> hadithRange = GeneratedColumn<String>(
      'hadis_range', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _bookNameMeta =
      const VerificationMeta('bookName');
  @override
  late final GeneratedColumn<String> bookName = GeneratedColumn<String>(
      'book_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, chapterId, bookId, title, number, hadithRange, bookName];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'chapter';
  @override
  VerificationContext validateIntegrity(Insertable<ChapterData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('chapter_id')) {
      context.handle(_chapterIdMeta,
          chapterId.isAcceptableOrUnknown(data['chapter_id']!, _chapterIdMeta));
    } else if (isInserting) {
      context.missing(_chapterIdMeta);
    }
    if (data.containsKey('book_id')) {
      context.handle(_bookIdMeta,
          bookId.isAcceptableOrUnknown(data['book_id']!, _bookIdMeta));
    } else if (isInserting) {
      context.missing(_bookIdMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('number')) {
      context.handle(_numberMeta,
          number.isAcceptableOrUnknown(data['number']!, _numberMeta));
    } else if (isInserting) {
      context.missing(_numberMeta);
    }
    if (data.containsKey('hadis_range')) {
      context.handle(
          _hadithRangeMeta,
          hadithRange.isAcceptableOrUnknown(
              data['hadis_range']!, _hadithRangeMeta));
    } else if (isInserting) {
      context.missing(_hadithRangeMeta);
    }
    if (data.containsKey('book_name')) {
      context.handle(_bookNameMeta,
          bookName.isAcceptableOrUnknown(data['book_name']!, _bookNameMeta));
    } else if (isInserting) {
      context.missing(_bookNameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  ChapterData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ChapterData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      chapterId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}chapter_id'])!,
      bookId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}book_id'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      number: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}number'])!,
      hadithRange: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}hadis_range'])!,
      bookName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}book_name'])!,
    );
  }

  @override
  $ChapterTable createAlias(String alias) {
    return $ChapterTable(attachedDatabase, alias);
  }
}

class ChapterData extends DataClass implements Insertable<ChapterData> {
  final int id;
  final int chapterId;
  final int bookId;
  final String title;
  final int number;
  final String hadithRange;
  final String bookName;
  const ChapterData(
      {required this.id,
      required this.chapterId,
      required this.bookId,
      required this.title,
      required this.number,
      required this.hadithRange,
      required this.bookName});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['chapter_id'] = Variable<int>(chapterId);
    map['book_id'] = Variable<int>(bookId);
    map['title'] = Variable<String>(title);
    map['number'] = Variable<int>(number);
    map['hadis_range'] = Variable<String>(hadithRange);
    map['book_name'] = Variable<String>(bookName);
    return map;
  }

  ChapterCompanion toCompanion(bool nullToAbsent) {
    return ChapterCompanion(
      id: Value(id),
      chapterId: Value(chapterId),
      bookId: Value(bookId),
      title: Value(title),
      number: Value(number),
      hadithRange: Value(hadithRange),
      bookName: Value(bookName),
    );
  }

  factory ChapterData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ChapterData(
      id: serializer.fromJson<int>(json['id']),
      chapterId: serializer.fromJson<int>(json['chapterId']),
      bookId: serializer.fromJson<int>(json['bookId']),
      title: serializer.fromJson<String>(json['title']),
      number: serializer.fromJson<int>(json['number']),
      hadithRange: serializer.fromJson<String>(json['hadithRange']),
      bookName: serializer.fromJson<String>(json['bookName']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'chapterId': serializer.toJson<int>(chapterId),
      'bookId': serializer.toJson<int>(bookId),
      'title': serializer.toJson<String>(title),
      'number': serializer.toJson<int>(number),
      'hadithRange': serializer.toJson<String>(hadithRange),
      'bookName': serializer.toJson<String>(bookName),
    };
  }

  ChapterData copyWith(
          {int? id,
          int? chapterId,
          int? bookId,
          String? title,
          int? number,
          String? hadithRange,
          String? bookName}) =>
      ChapterData(
        id: id ?? this.id,
        chapterId: chapterId ?? this.chapterId,
        bookId: bookId ?? this.bookId,
        title: title ?? this.title,
        number: number ?? this.number,
        hadithRange: hadithRange ?? this.hadithRange,
        bookName: bookName ?? this.bookName,
      );
  @override
  String toString() {
    return (StringBuffer('ChapterData(')
          ..write('id: $id, ')
          ..write('chapterId: $chapterId, ')
          ..write('bookId: $bookId, ')
          ..write('title: $title, ')
          ..write('number: $number, ')
          ..write('hadithRange: $hadithRange, ')
          ..write('bookName: $bookName')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, chapterId, bookId, title, number, hadithRange, bookName);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ChapterData &&
          other.id == this.id &&
          other.chapterId == this.chapterId &&
          other.bookId == this.bookId &&
          other.title == this.title &&
          other.number == this.number &&
          other.hadithRange == this.hadithRange &&
          other.bookName == this.bookName);
}

class ChapterCompanion extends UpdateCompanion<ChapterData> {
  final Value<int> id;
  final Value<int> chapterId;
  final Value<int> bookId;
  final Value<String> title;
  final Value<int> number;
  final Value<String> hadithRange;
  final Value<String> bookName;
  final Value<int> rowid;
  const ChapterCompanion({
    this.id = const Value.absent(),
    this.chapterId = const Value.absent(),
    this.bookId = const Value.absent(),
    this.title = const Value.absent(),
    this.number = const Value.absent(),
    this.hadithRange = const Value.absent(),
    this.bookName = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ChapterCompanion.insert({
    required int id,
    required int chapterId,
    required int bookId,
    required String title,
    required int number,
    required String hadithRange,
    required String bookName,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        chapterId = Value(chapterId),
        bookId = Value(bookId),
        title = Value(title),
        number = Value(number),
        hadithRange = Value(hadithRange),
        bookName = Value(bookName);
  static Insertable<ChapterData> custom({
    Expression<int>? id,
    Expression<int>? chapterId,
    Expression<int>? bookId,
    Expression<String>? title,
    Expression<int>? number,
    Expression<String>? hadithRange,
    Expression<String>? bookName,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (chapterId != null) 'chapter_id': chapterId,
      if (bookId != null) 'book_id': bookId,
      if (title != null) 'title': title,
      if (number != null) 'number': number,
      if (hadithRange != null) 'hadis_range': hadithRange,
      if (bookName != null) 'book_name': bookName,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ChapterCompanion copyWith(
      {Value<int>? id,
      Value<int>? chapterId,
      Value<int>? bookId,
      Value<String>? title,
      Value<int>? number,
      Value<String>? hadithRange,
      Value<String>? bookName,
      Value<int>? rowid}) {
    return ChapterCompanion(
      id: id ?? this.id,
      chapterId: chapterId ?? this.chapterId,
      bookId: bookId ?? this.bookId,
      title: title ?? this.title,
      number: number ?? this.number,
      hadithRange: hadithRange ?? this.hadithRange,
      bookName: bookName ?? this.bookName,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (chapterId.present) {
      map['chapter_id'] = Variable<int>(chapterId.value);
    }
    if (bookId.present) {
      map['book_id'] = Variable<int>(bookId.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (number.present) {
      map['number'] = Variable<int>(number.value);
    }
    if (hadithRange.present) {
      map['hadis_range'] = Variable<String>(hadithRange.value);
    }
    if (bookName.present) {
      map['book_name'] = Variable<String>(bookName.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ChapterCompanion(')
          ..write('id: $id, ')
          ..write('chapterId: $chapterId, ')
          ..write('bookId: $bookId, ')
          ..write('title: $title, ')
          ..write('number: $number, ')
          ..write('hadithRange: $hadithRange, ')
          ..write('bookName: $bookName, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $HadithTable extends Hadith with TableInfo<$HadithTable, HadithData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $HadithTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _bookIdMeta = const VerificationMeta('bookId');
  @override
  late final GeneratedColumn<int> bookId = GeneratedColumn<int>(
      'book_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _bookNameMeta =
      const VerificationMeta('bookName');
  @override
  late final GeneratedColumn<String> bookName = GeneratedColumn<String>(
      'book_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _chapterIdMeta =
      const VerificationMeta('chapterId');
  @override
  late final GeneratedColumn<int> chapterId = GeneratedColumn<int>(
      'chapter_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _sectionIdMeta =
      const VerificationMeta('sectionId');
  @override
  late final GeneratedColumn<int> sectionId = GeneratedColumn<int>(
      'section_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _hadithKeyMeta =
      const VerificationMeta('hadithKey');
  @override
  late final GeneratedColumn<String> hadithKey = GeneratedColumn<String>(
      'hadith_key', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _hadithIdMeta =
      const VerificationMeta('hadithId');
  @override
  late final GeneratedColumn<int> hadithId = GeneratedColumn<int>(
      'hadith_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _narratorMeta =
      const VerificationMeta('narrator');
  @override
  late final GeneratedColumn<String> narrator = GeneratedColumn<String>(
      'narrator', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _bnMeta = const VerificationMeta('bn');
  @override
  late final GeneratedColumn<String> bn = GeneratedColumn<String>(
      'bn', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _arMeta = const VerificationMeta('ar');
  @override
  late final GeneratedColumn<String> ar = GeneratedColumn<String>(
      'ar', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _arDiaclessMeta =
      const VerificationMeta('arDiacless');
  @override
  late final GeneratedColumn<String> arDiacless = GeneratedColumn<String>(
      'ar_diacless', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _noteMeta = const VerificationMeta('note');
  @override
  late final GeneratedColumn<String> note = GeneratedColumn<String>(
      'note', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _gradeIdMeta =
      const VerificationMeta('gradeId');
  @override
  late final GeneratedColumn<int> gradeId = GeneratedColumn<int>(
      'grade_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _gradeMeta = const VerificationMeta('grade');
  @override
  late final GeneratedColumn<String> grade = GeneratedColumn<String>(
      'grade', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _gradeColorMeta =
      const VerificationMeta('gradeColor');
  @override
  late final GeneratedColumn<String> gradeColor = GeneratedColumn<String>(
      'grade_color', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        bookId,
        bookName,
        chapterId,
        sectionId,
        hadithKey,
        hadithId,
        narrator,
        bn,
        ar,
        arDiacless,
        note,
        gradeId,
        grade,
        gradeColor
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'hadith';
  @override
  VerificationContext validateIntegrity(Insertable<HadithData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('book_id')) {
      context.handle(_bookIdMeta,
          bookId.isAcceptableOrUnknown(data['book_id']!, _bookIdMeta));
    } else if (isInserting) {
      context.missing(_bookIdMeta);
    }
    if (data.containsKey('book_name')) {
      context.handle(_bookNameMeta,
          bookName.isAcceptableOrUnknown(data['book_name']!, _bookNameMeta));
    } else if (isInserting) {
      context.missing(_bookNameMeta);
    }
    if (data.containsKey('chapter_id')) {
      context.handle(_chapterIdMeta,
          chapterId.isAcceptableOrUnknown(data['chapter_id']!, _chapterIdMeta));
    } else if (isInserting) {
      context.missing(_chapterIdMeta);
    }
    if (data.containsKey('section_id')) {
      context.handle(_sectionIdMeta,
          sectionId.isAcceptableOrUnknown(data['section_id']!, _sectionIdMeta));
    } else if (isInserting) {
      context.missing(_sectionIdMeta);
    }
    if (data.containsKey('hadith_key')) {
      context.handle(_hadithKeyMeta,
          hadithKey.isAcceptableOrUnknown(data['hadith_key']!, _hadithKeyMeta));
    } else if (isInserting) {
      context.missing(_hadithKeyMeta);
    }
    if (data.containsKey('hadith_id')) {
      context.handle(_hadithIdMeta,
          hadithId.isAcceptableOrUnknown(data['hadith_id']!, _hadithIdMeta));
    } else if (isInserting) {
      context.missing(_hadithIdMeta);
    }
    if (data.containsKey('narrator')) {
      context.handle(_narratorMeta,
          narrator.isAcceptableOrUnknown(data['narrator']!, _narratorMeta));
    } else if (isInserting) {
      context.missing(_narratorMeta);
    }
    if (data.containsKey('bn')) {
      context.handle(_bnMeta, bn.isAcceptableOrUnknown(data['bn']!, _bnMeta));
    } else if (isInserting) {
      context.missing(_bnMeta);
    }
    if (data.containsKey('ar')) {
      context.handle(_arMeta, ar.isAcceptableOrUnknown(data['ar']!, _arMeta));
    } else if (isInserting) {
      context.missing(_arMeta);
    }
    if (data.containsKey('ar_diacless')) {
      context.handle(
          _arDiaclessMeta,
          arDiacless.isAcceptableOrUnknown(
              data['ar_diacless']!, _arDiaclessMeta));
    } else if (isInserting) {
      context.missing(_arDiaclessMeta);
    }
    if (data.containsKey('note')) {
      context.handle(
          _noteMeta, note.isAcceptableOrUnknown(data['note']!, _noteMeta));
    } else if (isInserting) {
      context.missing(_noteMeta);
    }
    if (data.containsKey('grade_id')) {
      context.handle(_gradeIdMeta,
          gradeId.isAcceptableOrUnknown(data['grade_id']!, _gradeIdMeta));
    } else if (isInserting) {
      context.missing(_gradeIdMeta);
    }
    if (data.containsKey('grade')) {
      context.handle(
          _gradeMeta, grade.isAcceptableOrUnknown(data['grade']!, _gradeMeta));
    } else if (isInserting) {
      context.missing(_gradeMeta);
    }
    if (data.containsKey('grade_color')) {
      context.handle(
          _gradeColorMeta,
          gradeColor.isAcceptableOrUnknown(
              data['grade_color']!, _gradeColorMeta));
    } else if (isInserting) {
      context.missing(_gradeColorMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  HadithData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return HadithData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      bookId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}book_id'])!,
      bookName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}book_name'])!,
      chapterId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}chapter_id'])!,
      sectionId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}section_id'])!,
      hadithKey: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}hadith_key'])!,
      hadithId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}hadith_id'])!,
      narrator: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}narrator'])!,
      bn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}bn'])!,
      ar: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ar'])!,
      arDiacless: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ar_diacless'])!,
      note: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}note'])!,
      gradeId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}grade_id'])!,
      grade: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}grade'])!,
      gradeColor: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}grade_color'])!,
    );
  }

  @override
  $HadithTable createAlias(String alias) {
    return $HadithTable(attachedDatabase, alias);
  }
}

class HadithData extends DataClass implements Insertable<HadithData> {
  final int id;
  final int bookId;
  final String bookName;
  final int chapterId;
  final int sectionId;
  final String hadithKey;
  final int hadithId;
  final String narrator;
  final String bn;
  final String ar;
  final String arDiacless;
  final String note;
  final int gradeId;
  final String grade;
  final String gradeColor;
  const HadithData(
      {required this.id,
      required this.bookId,
      required this.bookName,
      required this.chapterId,
      required this.sectionId,
      required this.hadithKey,
      required this.hadithId,
      required this.narrator,
      required this.bn,
      required this.ar,
      required this.arDiacless,
      required this.note,
      required this.gradeId,
      required this.grade,
      required this.gradeColor});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['book_id'] = Variable<int>(bookId);
    map['book_name'] = Variable<String>(bookName);
    map['chapter_id'] = Variable<int>(chapterId);
    map['section_id'] = Variable<int>(sectionId);
    map['hadith_key'] = Variable<String>(hadithKey);
    map['hadith_id'] = Variable<int>(hadithId);
    map['narrator'] = Variable<String>(narrator);
    map['bn'] = Variable<String>(bn);
    map['ar'] = Variable<String>(ar);
    map['ar_diacless'] = Variable<String>(arDiacless);
    map['note'] = Variable<String>(note);
    map['grade_id'] = Variable<int>(gradeId);
    map['grade'] = Variable<String>(grade);
    map['grade_color'] = Variable<String>(gradeColor);
    return map;
  }

  HadithCompanion toCompanion(bool nullToAbsent) {
    return HadithCompanion(
      id: Value(id),
      bookId: Value(bookId),
      bookName: Value(bookName),
      chapterId: Value(chapterId),
      sectionId: Value(sectionId),
      hadithKey: Value(hadithKey),
      hadithId: Value(hadithId),
      narrator: Value(narrator),
      bn: Value(bn),
      ar: Value(ar),
      arDiacless: Value(arDiacless),
      note: Value(note),
      gradeId: Value(gradeId),
      grade: Value(grade),
      gradeColor: Value(gradeColor),
    );
  }

  factory HadithData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return HadithData(
      id: serializer.fromJson<int>(json['id']),
      bookId: serializer.fromJson<int>(json['bookId']),
      bookName: serializer.fromJson<String>(json['bookName']),
      chapterId: serializer.fromJson<int>(json['chapterId']),
      sectionId: serializer.fromJson<int>(json['sectionId']),
      hadithKey: serializer.fromJson<String>(json['hadithKey']),
      hadithId: serializer.fromJson<int>(json['hadithId']),
      narrator: serializer.fromJson<String>(json['narrator']),
      bn: serializer.fromJson<String>(json['bn']),
      ar: serializer.fromJson<String>(json['ar']),
      arDiacless: serializer.fromJson<String>(json['arDiacless']),
      note: serializer.fromJson<String>(json['note']),
      gradeId: serializer.fromJson<int>(json['gradeId']),
      grade: serializer.fromJson<String>(json['grade']),
      gradeColor: serializer.fromJson<String>(json['gradeColor']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'bookId': serializer.toJson<int>(bookId),
      'bookName': serializer.toJson<String>(bookName),
      'chapterId': serializer.toJson<int>(chapterId),
      'sectionId': serializer.toJson<int>(sectionId),
      'hadithKey': serializer.toJson<String>(hadithKey),
      'hadithId': serializer.toJson<int>(hadithId),
      'narrator': serializer.toJson<String>(narrator),
      'bn': serializer.toJson<String>(bn),
      'ar': serializer.toJson<String>(ar),
      'arDiacless': serializer.toJson<String>(arDiacless),
      'note': serializer.toJson<String>(note),
      'gradeId': serializer.toJson<int>(gradeId),
      'grade': serializer.toJson<String>(grade),
      'gradeColor': serializer.toJson<String>(gradeColor),
    };
  }

  HadithData copyWith(
          {int? id,
          int? bookId,
          String? bookName,
          int? chapterId,
          int? sectionId,
          String? hadithKey,
          int? hadithId,
          String? narrator,
          String? bn,
          String? ar,
          String? arDiacless,
          String? note,
          int? gradeId,
          String? grade,
          String? gradeColor}) =>
      HadithData(
        id: id ?? this.id,
        bookId: bookId ?? this.bookId,
        bookName: bookName ?? this.bookName,
        chapterId: chapterId ?? this.chapterId,
        sectionId: sectionId ?? this.sectionId,
        hadithKey: hadithKey ?? this.hadithKey,
        hadithId: hadithId ?? this.hadithId,
        narrator: narrator ?? this.narrator,
        bn: bn ?? this.bn,
        ar: ar ?? this.ar,
        arDiacless: arDiacless ?? this.arDiacless,
        note: note ?? this.note,
        gradeId: gradeId ?? this.gradeId,
        grade: grade ?? this.grade,
        gradeColor: gradeColor ?? this.gradeColor,
      );
  @override
  String toString() {
    return (StringBuffer('HadithData(')
          ..write('id: $id, ')
          ..write('bookId: $bookId, ')
          ..write('bookName: $bookName, ')
          ..write('chapterId: $chapterId, ')
          ..write('sectionId: $sectionId, ')
          ..write('hadithKey: $hadithKey, ')
          ..write('hadithId: $hadithId, ')
          ..write('narrator: $narrator, ')
          ..write('bn: $bn, ')
          ..write('ar: $ar, ')
          ..write('arDiacless: $arDiacless, ')
          ..write('note: $note, ')
          ..write('gradeId: $gradeId, ')
          ..write('grade: $grade, ')
          ..write('gradeColor: $gradeColor')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      bookId,
      bookName,
      chapterId,
      sectionId,
      hadithKey,
      hadithId,
      narrator,
      bn,
      ar,
      arDiacless,
      note,
      gradeId,
      grade,
      gradeColor);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is HadithData &&
          other.id == this.id &&
          other.bookId == this.bookId &&
          other.bookName == this.bookName &&
          other.chapterId == this.chapterId &&
          other.sectionId == this.sectionId &&
          other.hadithKey == this.hadithKey &&
          other.hadithId == this.hadithId &&
          other.narrator == this.narrator &&
          other.bn == this.bn &&
          other.ar == this.ar &&
          other.arDiacless == this.arDiacless &&
          other.note == this.note &&
          other.gradeId == this.gradeId &&
          other.grade == this.grade &&
          other.gradeColor == this.gradeColor);
}

class HadithCompanion extends UpdateCompanion<HadithData> {
  final Value<int> id;
  final Value<int> bookId;
  final Value<String> bookName;
  final Value<int> chapterId;
  final Value<int> sectionId;
  final Value<String> hadithKey;
  final Value<int> hadithId;
  final Value<String> narrator;
  final Value<String> bn;
  final Value<String> ar;
  final Value<String> arDiacless;
  final Value<String> note;
  final Value<int> gradeId;
  final Value<String> grade;
  final Value<String> gradeColor;
  final Value<int> rowid;
  const HadithCompanion({
    this.id = const Value.absent(),
    this.bookId = const Value.absent(),
    this.bookName = const Value.absent(),
    this.chapterId = const Value.absent(),
    this.sectionId = const Value.absent(),
    this.hadithKey = const Value.absent(),
    this.hadithId = const Value.absent(),
    this.narrator = const Value.absent(),
    this.bn = const Value.absent(),
    this.ar = const Value.absent(),
    this.arDiacless = const Value.absent(),
    this.note = const Value.absent(),
    this.gradeId = const Value.absent(),
    this.grade = const Value.absent(),
    this.gradeColor = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  HadithCompanion.insert({
    required int id,
    required int bookId,
    required String bookName,
    required int chapterId,
    required int sectionId,
    required String hadithKey,
    required int hadithId,
    required String narrator,
    required String bn,
    required String ar,
    required String arDiacless,
    required String note,
    required int gradeId,
    required String grade,
    required String gradeColor,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        bookId = Value(bookId),
        bookName = Value(bookName),
        chapterId = Value(chapterId),
        sectionId = Value(sectionId),
        hadithKey = Value(hadithKey),
        hadithId = Value(hadithId),
        narrator = Value(narrator),
        bn = Value(bn),
        ar = Value(ar),
        arDiacless = Value(arDiacless),
        note = Value(note),
        gradeId = Value(gradeId),
        grade = Value(grade),
        gradeColor = Value(gradeColor);
  static Insertable<HadithData> custom({
    Expression<int>? id,
    Expression<int>? bookId,
    Expression<String>? bookName,
    Expression<int>? chapterId,
    Expression<int>? sectionId,
    Expression<String>? hadithKey,
    Expression<int>? hadithId,
    Expression<String>? narrator,
    Expression<String>? bn,
    Expression<String>? ar,
    Expression<String>? arDiacless,
    Expression<String>? note,
    Expression<int>? gradeId,
    Expression<String>? grade,
    Expression<String>? gradeColor,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (bookId != null) 'book_id': bookId,
      if (bookName != null) 'book_name': bookName,
      if (chapterId != null) 'chapter_id': chapterId,
      if (sectionId != null) 'section_id': sectionId,
      if (hadithKey != null) 'hadith_key': hadithKey,
      if (hadithId != null) 'hadith_id': hadithId,
      if (narrator != null) 'narrator': narrator,
      if (bn != null) 'bn': bn,
      if (ar != null) 'ar': ar,
      if (arDiacless != null) 'ar_diacless': arDiacless,
      if (note != null) 'note': note,
      if (gradeId != null) 'grade_id': gradeId,
      if (grade != null) 'grade': grade,
      if (gradeColor != null) 'grade_color': gradeColor,
      if (rowid != null) 'rowid': rowid,
    });
  }

  HadithCompanion copyWith(
      {Value<int>? id,
      Value<int>? bookId,
      Value<String>? bookName,
      Value<int>? chapterId,
      Value<int>? sectionId,
      Value<String>? hadithKey,
      Value<int>? hadithId,
      Value<String>? narrator,
      Value<String>? bn,
      Value<String>? ar,
      Value<String>? arDiacless,
      Value<String>? note,
      Value<int>? gradeId,
      Value<String>? grade,
      Value<String>? gradeColor,
      Value<int>? rowid}) {
    return HadithCompanion(
      id: id ?? this.id,
      bookId: bookId ?? this.bookId,
      bookName: bookName ?? this.bookName,
      chapterId: chapterId ?? this.chapterId,
      sectionId: sectionId ?? this.sectionId,
      hadithKey: hadithKey ?? this.hadithKey,
      hadithId: hadithId ?? this.hadithId,
      narrator: narrator ?? this.narrator,
      bn: bn ?? this.bn,
      ar: ar ?? this.ar,
      arDiacless: arDiacless ?? this.arDiacless,
      note: note ?? this.note,
      gradeId: gradeId ?? this.gradeId,
      grade: grade ?? this.grade,
      gradeColor: gradeColor ?? this.gradeColor,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (bookId.present) {
      map['book_id'] = Variable<int>(bookId.value);
    }
    if (bookName.present) {
      map['book_name'] = Variable<String>(bookName.value);
    }
    if (chapterId.present) {
      map['chapter_id'] = Variable<int>(chapterId.value);
    }
    if (sectionId.present) {
      map['section_id'] = Variable<int>(sectionId.value);
    }
    if (hadithKey.present) {
      map['hadith_key'] = Variable<String>(hadithKey.value);
    }
    if (hadithId.present) {
      map['hadith_id'] = Variable<int>(hadithId.value);
    }
    if (narrator.present) {
      map['narrator'] = Variable<String>(narrator.value);
    }
    if (bn.present) {
      map['bn'] = Variable<String>(bn.value);
    }
    if (ar.present) {
      map['ar'] = Variable<String>(ar.value);
    }
    if (arDiacless.present) {
      map['ar_diacless'] = Variable<String>(arDiacless.value);
    }
    if (note.present) {
      map['note'] = Variable<String>(note.value);
    }
    if (gradeId.present) {
      map['grade_id'] = Variable<int>(gradeId.value);
    }
    if (grade.present) {
      map['grade'] = Variable<String>(grade.value);
    }
    if (gradeColor.present) {
      map['grade_color'] = Variable<String>(gradeColor.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('HadithCompanion(')
          ..write('id: $id, ')
          ..write('bookId: $bookId, ')
          ..write('bookName: $bookName, ')
          ..write('chapterId: $chapterId, ')
          ..write('sectionId: $sectionId, ')
          ..write('hadithKey: $hadithKey, ')
          ..write('hadithId: $hadithId, ')
          ..write('narrator: $narrator, ')
          ..write('bn: $bn, ')
          ..write('ar: $ar, ')
          ..write('arDiacless: $arDiacless, ')
          ..write('note: $note, ')
          ..write('gradeId: $gradeId, ')
          ..write('grade: $grade, ')
          ..write('gradeColor: $gradeColor, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SectionTable extends Section with TableInfo<$SectionTable, SectionData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SectionTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _bookIdMeta = const VerificationMeta('bookId');
  @override
  late final GeneratedColumn<int> bookId = GeneratedColumn<int>(
      'book_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _bookNameMeta =
      const VerificationMeta('bookName');
  @override
  late final GeneratedColumn<String> bookName = GeneratedColumn<String>(
      'book_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _chapterIdMeta =
      const VerificationMeta('chapterId');
  @override
  late final GeneratedColumn<int> chapterId = GeneratedColumn<int>(
      'chapter_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _sectionIdMeta =
      const VerificationMeta('sectionId');
  @override
  late final GeneratedColumn<int> sectionId = GeneratedColumn<int>(
      'section_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _prefaceMeta =
      const VerificationMeta('preface');
  @override
  late final GeneratedColumn<String> preface = GeneratedColumn<String>(
      'preface', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _numberMeta = const VerificationMeta('number');
  @override
  late final GeneratedColumn<String> number = GeneratedColumn<String>(
      'number', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _sortOrderMeta =
      const VerificationMeta('sortOrder');
  @override
  late final GeneratedColumn<int> sortOrder = GeneratedColumn<int>(
      'sort_order', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        bookId,
        bookName,
        chapterId,
        sectionId,
        title,
        preface,
        number,
        sortOrder
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'section';
  @override
  VerificationContext validateIntegrity(Insertable<SectionData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('book_id')) {
      context.handle(_bookIdMeta,
          bookId.isAcceptableOrUnknown(data['book_id']!, _bookIdMeta));
    } else if (isInserting) {
      context.missing(_bookIdMeta);
    }
    if (data.containsKey('book_name')) {
      context.handle(_bookNameMeta,
          bookName.isAcceptableOrUnknown(data['book_name']!, _bookNameMeta));
    } else if (isInserting) {
      context.missing(_bookNameMeta);
    }
    if (data.containsKey('chapter_id')) {
      context.handle(_chapterIdMeta,
          chapterId.isAcceptableOrUnknown(data['chapter_id']!, _chapterIdMeta));
    } else if (isInserting) {
      context.missing(_chapterIdMeta);
    }
    if (data.containsKey('section_id')) {
      context.handle(_sectionIdMeta,
          sectionId.isAcceptableOrUnknown(data['section_id']!, _sectionIdMeta));
    } else if (isInserting) {
      context.missing(_sectionIdMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('preface')) {
      context.handle(_prefaceMeta,
          preface.isAcceptableOrUnknown(data['preface']!, _prefaceMeta));
    } else if (isInserting) {
      context.missing(_prefaceMeta);
    }
    if (data.containsKey('number')) {
      context.handle(_numberMeta,
          number.isAcceptableOrUnknown(data['number']!, _numberMeta));
    } else if (isInserting) {
      context.missing(_numberMeta);
    }
    if (data.containsKey('sort_order')) {
      context.handle(_sortOrderMeta,
          sortOrder.isAcceptableOrUnknown(data['sort_order']!, _sortOrderMeta));
    } else if (isInserting) {
      context.missing(_sortOrderMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  SectionData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SectionData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      bookId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}book_id'])!,
      bookName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}book_name'])!,
      chapterId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}chapter_id'])!,
      sectionId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}section_id'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      preface: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}preface'])!,
      number: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}number'])!,
      sortOrder: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}sort_order'])!,
    );
  }

  @override
  $SectionTable createAlias(String alias) {
    return $SectionTable(attachedDatabase, alias);
  }
}

class SectionData extends DataClass implements Insertable<SectionData> {
  final int id;
  final int bookId;
  final String bookName;
  final int chapterId;
  final int sectionId;
  final String title;
  final String preface;
  final String number;
  final int sortOrder;
  const SectionData(
      {required this.id,
      required this.bookId,
      required this.bookName,
      required this.chapterId,
      required this.sectionId,
      required this.title,
      required this.preface,
      required this.number,
      required this.sortOrder});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['book_id'] = Variable<int>(bookId);
    map['book_name'] = Variable<String>(bookName);
    map['chapter_id'] = Variable<int>(chapterId);
    map['section_id'] = Variable<int>(sectionId);
    map['title'] = Variable<String>(title);
    map['preface'] = Variable<String>(preface);
    map['number'] = Variable<String>(number);
    map['sort_order'] = Variable<int>(sortOrder);
    return map;
  }

  SectionCompanion toCompanion(bool nullToAbsent) {
    return SectionCompanion(
      id: Value(id),
      bookId: Value(bookId),
      bookName: Value(bookName),
      chapterId: Value(chapterId),
      sectionId: Value(sectionId),
      title: Value(title),
      preface: Value(preface),
      number: Value(number),
      sortOrder: Value(sortOrder),
    );
  }

  factory SectionData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SectionData(
      id: serializer.fromJson<int>(json['id']),
      bookId: serializer.fromJson<int>(json['bookId']),
      bookName: serializer.fromJson<String>(json['bookName']),
      chapterId: serializer.fromJson<int>(json['chapterId']),
      sectionId: serializer.fromJson<int>(json['sectionId']),
      title: serializer.fromJson<String>(json['title']),
      preface: serializer.fromJson<String>(json['preface']),
      number: serializer.fromJson<String>(json['number']),
      sortOrder: serializer.fromJson<int>(json['sortOrder']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'bookId': serializer.toJson<int>(bookId),
      'bookName': serializer.toJson<String>(bookName),
      'chapterId': serializer.toJson<int>(chapterId),
      'sectionId': serializer.toJson<int>(sectionId),
      'title': serializer.toJson<String>(title),
      'preface': serializer.toJson<String>(preface),
      'number': serializer.toJson<String>(number),
      'sortOrder': serializer.toJson<int>(sortOrder),
    };
  }

  SectionData copyWith(
          {int? id,
          int? bookId,
          String? bookName,
          int? chapterId,
          int? sectionId,
          String? title,
          String? preface,
          String? number,
          int? sortOrder}) =>
      SectionData(
        id: id ?? this.id,
        bookId: bookId ?? this.bookId,
        bookName: bookName ?? this.bookName,
        chapterId: chapterId ?? this.chapterId,
        sectionId: sectionId ?? this.sectionId,
        title: title ?? this.title,
        preface: preface ?? this.preface,
        number: number ?? this.number,
        sortOrder: sortOrder ?? this.sortOrder,
      );
  @override
  String toString() {
    return (StringBuffer('SectionData(')
          ..write('id: $id, ')
          ..write('bookId: $bookId, ')
          ..write('bookName: $bookName, ')
          ..write('chapterId: $chapterId, ')
          ..write('sectionId: $sectionId, ')
          ..write('title: $title, ')
          ..write('preface: $preface, ')
          ..write('number: $number, ')
          ..write('sortOrder: $sortOrder')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, bookId, bookName, chapterId, sectionId,
      title, preface, number, sortOrder);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SectionData &&
          other.id == this.id &&
          other.bookId == this.bookId &&
          other.bookName == this.bookName &&
          other.chapterId == this.chapterId &&
          other.sectionId == this.sectionId &&
          other.title == this.title &&
          other.preface == this.preface &&
          other.number == this.number &&
          other.sortOrder == this.sortOrder);
}

class SectionCompanion extends UpdateCompanion<SectionData> {
  final Value<int> id;
  final Value<int> bookId;
  final Value<String> bookName;
  final Value<int> chapterId;
  final Value<int> sectionId;
  final Value<String> title;
  final Value<String> preface;
  final Value<String> number;
  final Value<int> sortOrder;
  final Value<int> rowid;
  const SectionCompanion({
    this.id = const Value.absent(),
    this.bookId = const Value.absent(),
    this.bookName = const Value.absent(),
    this.chapterId = const Value.absent(),
    this.sectionId = const Value.absent(),
    this.title = const Value.absent(),
    this.preface = const Value.absent(),
    this.number = const Value.absent(),
    this.sortOrder = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SectionCompanion.insert({
    required int id,
    required int bookId,
    required String bookName,
    required int chapterId,
    required int sectionId,
    required String title,
    required String preface,
    required String number,
    required int sortOrder,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        bookId = Value(bookId),
        bookName = Value(bookName),
        chapterId = Value(chapterId),
        sectionId = Value(sectionId),
        title = Value(title),
        preface = Value(preface),
        number = Value(number),
        sortOrder = Value(sortOrder);
  static Insertable<SectionData> custom({
    Expression<int>? id,
    Expression<int>? bookId,
    Expression<String>? bookName,
    Expression<int>? chapterId,
    Expression<int>? sectionId,
    Expression<String>? title,
    Expression<String>? preface,
    Expression<String>? number,
    Expression<int>? sortOrder,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (bookId != null) 'book_id': bookId,
      if (bookName != null) 'book_name': bookName,
      if (chapterId != null) 'chapter_id': chapterId,
      if (sectionId != null) 'section_id': sectionId,
      if (title != null) 'title': title,
      if (preface != null) 'preface': preface,
      if (number != null) 'number': number,
      if (sortOrder != null) 'sort_order': sortOrder,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SectionCompanion copyWith(
      {Value<int>? id,
      Value<int>? bookId,
      Value<String>? bookName,
      Value<int>? chapterId,
      Value<int>? sectionId,
      Value<String>? title,
      Value<String>? preface,
      Value<String>? number,
      Value<int>? sortOrder,
      Value<int>? rowid}) {
    return SectionCompanion(
      id: id ?? this.id,
      bookId: bookId ?? this.bookId,
      bookName: bookName ?? this.bookName,
      chapterId: chapterId ?? this.chapterId,
      sectionId: sectionId ?? this.sectionId,
      title: title ?? this.title,
      preface: preface ?? this.preface,
      number: number ?? this.number,
      sortOrder: sortOrder ?? this.sortOrder,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (bookId.present) {
      map['book_id'] = Variable<int>(bookId.value);
    }
    if (bookName.present) {
      map['book_name'] = Variable<String>(bookName.value);
    }
    if (chapterId.present) {
      map['chapter_id'] = Variable<int>(chapterId.value);
    }
    if (sectionId.present) {
      map['section_id'] = Variable<int>(sectionId.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (preface.present) {
      map['preface'] = Variable<String>(preface.value);
    }
    if (number.present) {
      map['number'] = Variable<String>(number.value);
    }
    if (sortOrder.present) {
      map['sort_order'] = Variable<int>(sortOrder.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SectionCompanion(')
          ..write('id: $id, ')
          ..write('bookId: $bookId, ')
          ..write('bookName: $bookName, ')
          ..write('chapterId: $chapterId, ')
          ..write('sectionId: $sectionId, ')
          ..write('title: $title, ')
          ..write('preface: $preface, ')
          ..write('number: $number, ')
          ..write('sortOrder: $sortOrder, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDb extends GeneratedDatabase {
  _$AppDb(QueryExecutor e) : super(e);
  late final $BooksTable books = $BooksTable(this);
  late final $ChapterTable chapter = $ChapterTable(this);
  late final $HadithTable hadith = $HadithTable(this);
  late final $SectionTable section = $SectionTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [books, chapter, hadith, section];
}
