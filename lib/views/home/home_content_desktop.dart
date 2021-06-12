import 'package:flutter/material.dart';
import 'package:nussuunioncamp/constants/app_colors.dart';
import 'package:nussuunioncamp/widgets/call_to_action/call_to_action.dart';
import 'package:nussuunioncamp/widgets/course_details/course_details.dart';
import 'package:url_launcher/url_launcher.dart';

import 'call_widget.dart';

class HomeContentDesktop extends StatelessWidget {
  HomeContentDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [    Row(
          children: <Widget>[
            CourseDetails(),
            Column(
              children: [
                SizedBox(
                  height: 200,
                ),
                showDialouge(
                  cancelButton: cancelButton,
                  continueButton: continueButton,
                  topText: FOCC,
                  bottomText: "Contact Numbers",
                  insideButtonText: FOCC,
                ),
                SizedBox(
                  height: 100,
                ),
                TextButton(
                    onPressed: () {
                      launch("tel://+6568741616");
                    },
                    child: CallToAction(CampusSec)),
                SizedBox(
                  height: 100,
                ),
                TextButton(
                  child: CallToAction(OSA),
                  onPressed: () {
                    launch(OSAA.toString());
                  },
                ),
              ],
            )
          ],
        ),
        ],
      ),
    );
  }

  Widget cancelButton = FlatButton(
    child: Text("Call"),
    onPressed: () {
      launch("tel://+6594493149");
    },
  );
  Widget continueButton = FlatButton(
    child: Text("Email"),
    onPressed: () {
      launch(FOCC.toString());
    },
  );
}

final Uri OSAA = Uri(
    scheme: 'mailto',
    path: 'osalistens@nus.edu.sg',
    queryParameters: {'subject': 'To Whom It may Concern,'});

final Uri FOCCC = Uri(
    scheme: 'mailto',
    path: 'feedback@nussu.org.sg',
    queryParameters: {'subject': 'To Whom It May Concern,'});
