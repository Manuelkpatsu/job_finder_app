import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:job_finder_app/models/job.dart';
import 'package:job_finder_app/screens/main/success/success_screen.dart';
import 'package:job_finder_app/screens/widgets/app_bar_divider.dart';
import 'package:job_finder_app/screens/widgets/custom_button.dart';
import 'package:job_finder_app/screens/widgets/text_input_field.dart';
import 'package:job_finder_app/theme/custom_color.dart';

import 'widgets/apply_jobs_text.dart';
import 'widgets/delete_button.dart';
import 'widgets/info_text.dart';
import 'widgets/phone_input_field.dart';
import 'widgets/resume_text.dart';
import 'widgets/upload_your_resume_text.dart';
import 'widgets/uploaded_resume_text.dart';

class ApplyJobScreen extends StatefulWidget {
  static const routeName = '/apply_job';

  final Job argument;

  const ApplyJobScreen({Key? key, required this.argument}) : super(key: key);

  @override
  State<ApplyJobScreen> createState() => _ApplyJobScreenState();
}

class _ApplyJobScreenState extends State<ApplyJobScreen> {
  FilePickerResult? _result;
  File? _pickedFile;
  final TextEditingController _letterController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();

  @override
  void dispose() {
    _letterController.dispose();
    _phoneNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final job = widget.argument;

    return Scaffold(
      appBar: AppBar(
        title: const ApplyJobsText(),
        centerTitle: false,
        titleSpacing: 0,
        bottom: const AppBarDivider(),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const SizedBox(height: 40),
            Image.asset(
              job.companyLogo,
              width: 80,
              height: 80,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 10),
            InfoText(job: job),
            const SizedBox(height: 40),
            const ResumeText(),
            const SizedBox(height: 15),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: CustomColor.primaryColor, width: 1.0),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const UploadYourResumeText(),
                  _result == null ? const SizedBox.shrink() : const SizedBox(height: 11),
                  _result == null
                      ? const SizedBox.shrink()
                      : UploadedResumeText(resume: _result!.files.single.name),
                  const SizedBox(height: 24),
                  Row(
                    children: [
                      CustomButton(
                        borderRadius: 5,
                        height: 50,
                        width: 76,
                        onPressed: () async {
                          _result = await FilePicker.platform.pickFiles();

                          if (_result != null) {
                            setState(() {
                              _pickedFile = File(_result!.files.single.path!);
                            });
                          } else {
                            debugPrint('Please try again.');
                          }
                        },
                        widget: Text(_pickedFile == null ? 'Upload' : 'Edit'),
                      ),
                      const SizedBox(width: 10),
                      DeleteButton(
                        onPressed: () {
                          setState(() {
                            if (_pickedFile != null || _result != null) {
                              _pickedFile = null;
                              _result = null;
                            }
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            PhoneInputField(
              controller: _phoneNumberController,
              onChanged: (phone) {
                setState(() {
                  _phoneNumberController.text = phone.completeNumber;
                });
              },
            ),
            const SizedBox(height: 10),
            TextInputField(
              controller: _letterController,
              labelText: 'Application Letter',
              inputAction: TextInputAction.done,
              textCapitalization: TextCapitalization.sentences,
              inputType: TextInputType.multiline,
            ),
          ],
        ),
      ),
      bottomSheet: IntrinsicHeight(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              const Divider(
                height: 0,
                thickness: 1.0,
                color: CustomColor.dividerColor,
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: CustomButton(
                  onPressed: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                      SuccessScreen.routeName,
                      (route) => false,
                      arguments: job,
                    );
                  },
                  widget: const Text('Apply Now'),
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
