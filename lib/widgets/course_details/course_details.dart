import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        var textAlignment =
            sizingInformation.deviceScreenType == DeviceScreenType.Desktop
                ? TextAlign.left
                : TextAlign.center;
        double titleSize =
            sizingInformation.deviceScreenType == DeviceScreenType.Mobile
                ? 50
                : 80;

        double descriptionSize =
            sizingInformation.deviceScreenType == DeviceScreenType.Mobile
                ? 16
                : 21;

        return Container(
          width: 600,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'UNION CAMP.\nTHE BASICS',
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    height: 0.9,
                    fontSize: titleSize),
                textAlign: textAlignment,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Beside would be a list of emergency contacts that y'all can use",
                style: TextStyle(
                  fontSize: descriptionSize,
                  height: 1.7,
                ),
                textAlign: textAlignment,
              ),
              // Center(
              //     child: RaisedButton(
              //   color: Colors.greenAccent,
              //
              //   onPressed: () {},
              //   child: Text("Freshman Orinetation Central Committee", style: TextStyle(color: Colors.white),),
              // ))
            ],
          ),
        );
      },
    );
  }
}
