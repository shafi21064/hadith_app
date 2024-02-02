class BooksModel {
  int? id;
  String? title;
  String? titleAr;
  int? numberOfHadith;
  String? abvrCode;
  String? bookName;
  String? bookDescr;
  String? colorCode;

  BooksModel({
    this.id,
    this.title,
    this.titleAr,
    this.numberOfHadith,
    this.abvrCode,
    this.bookName,
    this.bookDescr,
    this.colorCode
  });

  BooksModel.fromMap(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    titleAr = json['title_ar'];
    numberOfHadith = json['number_of_hadis'];
    abvrCode = json['abvr_code'];
    bookName = json['book_name'];
    bookDescr = json['book_descr'];
    colorCode = json['color_code'];
  }

  Map<String, Object?> toMap() {
    return {
      'id': id,
      'title': title,
      'title_ar': titleAr,
      'number_of_hadis': numberOfHadith,
      'abvr_code': abvrCode,
      'book_name': bookName,
      'book_descr': bookDescr,
      'color_code': colorCode,
    };
  }
}