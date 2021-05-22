import 'package:flutter/material.dart';
import 'package:insta_copy/utils/widgets/display_text.dart';

class DisplayUserNameAndVerifyStatus extends StatelessWidget {
  const DisplayUserNameAndVerifyStatus({
    Key? key,
    required this.username,
    required this.isVerified,
  }) : super(key: key);

  final String username;
  final bool isVerified;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        DisplayText(
          data: username,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
        SizedBox(width: 5),
        Visibility(
          visible: isVerified,
          child: Center(
            child: Container(
              height: 22,
              width: 22,
              child: Image.asset('assets/verified.png'),
            ),
          ),
        )
      ],
    );
  }
}
