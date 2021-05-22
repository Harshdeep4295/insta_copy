import 'package:flutter/material.dart';
import 'package:insta_copy/model/user_detail.dart';
import 'package:insta_copy/view/widgets/post_and_follow_data.dart';
import 'package:insta_copy/view/widgets/username_abd_verify_status.dart';
import 'package:insta_copy/view/widgets/username_and_status.dart';

import 'follow_and_more_buttons.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User? user;

  Widget profilePic(String? url) {
    return Container(
      height: 150,
      width: 150,
      margin: EdgeInsets.only(left: 10, top: 20),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.transparent,
        image: new DecorationImage(
          image: Image.network(url!).image,
        ),
      ),
    );
  }

  Widget userPorfileDetails(User user) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.only(left: 5.0),
        margin: const EdgeInsets.only(left: 10.0, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DisplayUserNameAndVerifyStatus(
              username: user.username!,
              isVerified: user.isVerified!,
            ),
            FollowAndMoreButton(),
            PostAndFollowData(
              posts: user.edgeOwnerToTimelineMedia!.count!,
              followedBy: user.edgeFollowedBy!.count!,
              following: user.edgeFollow!.count!,
            ),
            UserNameAndStatus(
              fullName: user.fullName!,
              biography: user.biography!,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      margin: EdgeInsets.only(top: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          profilePic(user!.profilePicUrlHd),
          SizedBox(height: 40),
          userPorfileDetails(user!),
        ],
      ),
    );
  }
}
