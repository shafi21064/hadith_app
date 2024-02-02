class HadithModel {
  int? id;
  int? bookId;
  String? bookName;
  int? chapterId;
  int? sectionId;
  String? title;
  String? preface;
  int? number;
  int? sortOrder;


  HadithModel({
    this.id,
    this.chapterId,
    this.bookId,
    this.bookName,
    this.sectionId,
    this.title,
    this.preface,
    this.number,
    this.sortOrder
  });

  HadithModel.fromMap(Map<String, dynamic> json) {
    id = json['id'];
    bookId = json['book_id'];
    bookName = json['book_name'];
    chapterId = json['chapter_id'];
    sectionId = json['section_id'];
    title = json['title'];
    preface = json['preface'];
    number = json['number'];
    sortOrder = json['sort_order'];
  }

  Map<String, Object?> toMap() {
    return {
      'id': id,
      'book_id': bookId,
      'book_name': bookName,
      'chapter_id': chapterId,
      'section_id': sectionId,
      'title': title,
      'preface': preface,
      'number': number,
      'sort_order': sortOrder,
    };
  }
}