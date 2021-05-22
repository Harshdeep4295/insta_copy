import 'package:flutter/material.dart';
import 'package:insta_copy/utils/widgets/display_text.dart';

class UserNameAndStatus extends StatelessWidget {
  const UserNameAndStatus({
    Key? key,
    required this.fullName,
    required this.biography,
  }) : super(key: key);

  final String fullName;
  final String biography;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: 15,
        ),
        DisplayText(
          data: fullName,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        SizedBox(height: 5),
        DisplayText(
          data: biography,
          fontSize: 13,
        ),
      ],
    );
  }
}
