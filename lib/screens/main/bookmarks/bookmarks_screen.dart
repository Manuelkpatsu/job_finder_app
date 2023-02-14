import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:job_finder_app/models/bookmark.dart';
import 'package:job_finder_app/screens/main/bookmarks/widgets/bookmark_tile.dart';
import 'package:job_finder_app/screens/widgets/empty_state.dart';
import 'package:job_finder_app/theme/custom_color.dart';

import 'widgets/bookmarks_text.dart';

class BookmarksScreen extends StatelessWidget {
  static const routeName = '/bookmarks';

  const BookmarksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Bookmark> bookmarks = [
      const Bookmark(
        id: 1,
        companyLogo: 'assets/images/companies/gojek.png',
        jobTitle: 'UI UX Designer',
        companyName: 'Gojek',
        salary: 5000.00,
      ),
      const Bookmark(
        id: 2,
        companyLogo: 'assets/images/companies/bukalapak.png',
        jobTitle: 'FrontEnd Developer',
        companyName: 'Bukalapak',
        salary: 8000.00,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColor.primaryColor,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
          statusBarColor: CustomColor.primaryColor,
        ),
        title: const BookmarksText(),
        centerTitle: false,
      ),
      body: bookmarks.isEmpty
          ? const EmptyState(
              image: 'assets/images/bookmarks-empty-state.png',
              title: 'Opps, No Bookmark',
              description:
                  'You didn’t save any jobs. Let’s explore new jobs and find your dream jobs',
            )
          : ListView.separated(
              itemBuilder: (context, index) {
                Bookmark bookmark = bookmarks[index];

                return BookmarkTile(
                  onTap: () {},
                  bookmark: bookmark,
                );
              },
              separatorBuilder: (ctx, index) => const Divider(
                height: 0,
                thickness: 1,
                color: CustomColor.dividerColor,
              ),
              itemCount: bookmarks.length,
            ),
    );
  }
}
