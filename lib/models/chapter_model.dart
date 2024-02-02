class ChapterModel {
  int? id;
  int? chapterId;
  int? bookId;
  String? title;
  int? number;
  String? hadithRange;
  String? bookName;

  ChapterModel({
    this.id,
    this.title,
    this.chapterId,
    this.bookId,
    this.number,
    this.bookName,
    this.hadithRange,
  });

  ChapterModel.fromMap(Map<String, dynamic> json) {
    id = json['id'];
    chapterId = json['chapter_id'];
    bookId = json['book_id'];
    title = json['title'];
    number = json['number'];
    hadithRange = json['hadis_range'];
    bookName = json['book_name'];
  }

  Map<String, Object?> toMap() {
    return {
      'id': id,
      'chapter_id': chapterId,
      'book_id': bookId,
      'title': title,
      'number': number,
      'hadis_range': hadithRange,
      'book_name': bookName,
    };
  }
}