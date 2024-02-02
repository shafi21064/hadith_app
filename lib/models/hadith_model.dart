class HadithModel {
  int? id;
  int? bookId;
  String? bookName;
  int? chapterId;
  int? sectionId;
  String? hadithKey;
  int? hadithId;
  String? narrator;
  String? bn;
  String? ar;
  String? arDiacless;
  String? note;
  int? gradeId;
  String? grade;
  String? gradeColor;


  HadithModel({
    this.id,
    this.chapterId,
    this.bookId,
    this.bookName,
    this.sectionId,
    this.hadithKey,
    this.hadithId,
    this.narrator,
    this.bn,
    this.ar,
    this.arDiacless,
    this.note,
    this.gradeId,
    this.grade,
    this.gradeColor
  });

  HadithModel.fromMap(Map<String, dynamic> json) {
    id = json['id'];
    bookId = json['book_id'];
    bookName = json['book_name'];
    chapterId = json['chapter_id'];
    sectionId = json['section_id'];
    hadithKey = json['hadith_key'];
    hadithId = json['hadith_id'];
    narrator = json['narrator'];
    bn = json['bn'];
    ar = json['ar'];
    arDiacless = json['ar_diacless'];
    note = json['note'];
    gradeId = json['grade_id'];
    grade = json['grade'];
    gradeColor = json['grade_color'];
  }

  Map<String, Object?> toMap() {
    return {
      'id': id,
      'book_id': bookId,
      'book_name': bookName,
      'chapter_id': chapterId,
      'section_id': sectionId,
      'hadith_key': hadithKey,
      'hadith_id': hadithId,
      'narrator': narrator,
      'bn': bn,
      'ar': ar,
      'ar_diacless': arDiacless,
      'note': note,
      'grade_id': gradeId,
      'grade': grade,
      'grade_color': gradeColor,
    };
  }
}