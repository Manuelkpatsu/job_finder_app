import 'package:flutter/material.dart';

class BookmarksText extends StatelessWidget {
  const BookmarksText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Bookmarks',
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w700,
        fontSize: 22,
        height: 1.22,
      ),
    );
  }
}
