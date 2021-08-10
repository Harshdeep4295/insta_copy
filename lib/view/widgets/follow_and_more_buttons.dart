import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:insta_copy/utils/widgets/display_text.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';

class FollowAndMoreButton extends StatelessWidget {
  const FollowAndMoreButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MaterialButton(
          height: 30,
          child: DisplayText(
            data: 'Follow',
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: Colors.white,
          ),
          color: Colors.blue.shade600,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(4),
            ),
            side: BorderSide(
              color: Colors.blue.shade600,
            ),
          ),
          onPressed: () {},
        ),
        MaterialButton(
          onPressed: () async {
            // Initialize Firebase.
            await Firebase.initializeApp();

            // Elsewhere in your code
            FirebaseCrashlytics.instance.crash();
          },
          minWidth: 20,
          child: Container(
            height: 30,
            width: 30,
            child: Icon(
              Icons.arrow_drop_down,
              color: Colors.white,
            ),
            decoration: BoxDecoration(
              color: Colors.blue.shade600,
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        ),
      ],
    );
  }
}
