import 'package:flutter/material.dart';

import '../../../models/book.dart';

class BookItem extends StatelessWidget {
  final Book book;

  const BookItem({required this.book, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Image.network(
                  height: 120,
                  book.book_image,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Flexible(
              flex: 7,
              child: Padding(
                padding: const EdgeInsets.only(left: 9.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    Text(
                      book.book_title,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Text(
                          '${book.book_author}',
                          style: TextStyle(
                              color: Colors.grey.shade600, fontSize: 14),
                        ),
                        const SizedBox(width: 5),
                        Text(
                          ' ${book.book_published_at}',
                          style: TextStyle(
                              color: Colors.grey.shade400, fontSize: 15),
                        )
                      ],
                    ),
                    SizedBox(height: 3),
                    Text(
                      softWrap: true,
                      '${book.book_desc}',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          overflow: TextOverflow.ellipsis),
                      maxLines: 3,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
