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
        SizedBox(width: 10),
        Visibility(
          visible: isVerified,
          child: Container(
            height: 20,
            width: 20,
            foregroundDecoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue.shade600,
            ),
          ),
        )
      ],
    );
  }
}
