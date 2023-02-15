import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:job_finder_app/theme/custom_color.dart';

import 'widgets/application_text.dart';
import 'widgets/interview.dart';
import 'widgets/not_suitable.dart';
import 'widgets/review.dart';

class ApplicationScreen extends StatefulWidget {
  static const routeName = '/application';

  const ApplicationScreen({Key? key}) : super(key: key);

  @override
  State<ApplicationScreen> createState() => _ApplicationScreenState();
}

class _ApplicationScreenState extends State<ApplicationScreen>
    with AutomaticKeepAliveClientMixin<ApplicationScreen> {
  @override
  Widget build(BuildContext context) {
    super.build(context);

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: CustomColor.primaryColor,
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarBrightness: Brightness.dark,
            statusBarColor: CustomColor.primaryColor,
          ),
          title: const ApplicationText(),
          centerTitle: false,
        ),
        body: Column(
          children: const [
            TabBar(
              tabs: [
                Tab(text: 'Review'),
                Tab(text: 'Not Suitable'),
                Tab(text: 'Interview'),
              ],
              unselectedLabelColor: CustomColor.deskripsiColor,
              labelColor: CustomColor.primaryColor,
              labelStyle: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                height: 1.21,
              ),
              unselectedLabelStyle: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                height: 1.21,
              ),
              indicatorColor: CustomColor.primaryColor,
              indicatorWeight: 3,
            ),
            Divider(color: Color(0xfff4f4f4), height: 0, thickness: 1),
            Expanded(
              child: TabBarView(
                children: [
                  Review(),
                  NotSuitable(),
                  Interview(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
