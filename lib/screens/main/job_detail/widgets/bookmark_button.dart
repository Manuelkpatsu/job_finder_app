import 'package:flutter/material.dart';

class BookmarkButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const BookmarkButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      splashRadius: 20,
      onPressed: onPressed,
      icon: Image.asset(
        'assets/images/bookmarks.png',
        width: 24,
        height: 24,
        fit: BoxFit.contain,
      ),
    );
  }
}
