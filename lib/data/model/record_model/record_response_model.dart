import 'package:intl/intl.dart';

class RecordResponseModel {
  int? stateId;
  String? bookId;
  int? userId;
  int? stateType;

  // User? user;

  DateTime? startDate;
  DateTime? endDate;
  String? comment;
  int? progress;
  double? rating;

  int? recordId;
  String? bookImage;
  String? bookTitle;
  String? bookAuthor;
  String? bookPublisher;
  int? bookPage;
  String? bookDesc;
  String? bookIsbn;

  bool? isMyBook;

  RecordResponseModel.fromMap(Map<String, dynamic> map)
      : stateId = map["stateId"],
        recordId = map["recordId"],
        userId = map["userId"],
        bookId = map["bookId"],
        isMyBook = map["isMyBook"],
        bookImage = map["bookImage"],
        bookTitle = map["bookTitle"],
        bookAuthor = map["bookAuthor"],
        bookPage = map["bookPage"],
        bookPublisher = map["bookPublisher"],
        bookDesc = map["bookDesc"],
        bookIsbn = map["bookIsbn"],
        stateType = map["stateType"],
        startDate = map["startDate"] != null
            ? DateFormat("yyyy-MM-dd").parse(map["startDate"])
            : null,
        endDate = map["endDate"] != null
            ? DateFormat("yyyy-MM-dd").parse(map["endDate"])
            : null,
        comment = map["comment"],
        progress = map["progress"],
        rating = map["rating"];
}
