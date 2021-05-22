import 'package:flutter/material.dart';
import 'package:insta_copy/utils/widgets/display_text.dart';

class PostAndFollowData extends StatelessWidget {
  const PostAndFollowData({
    Key? key,
    required this.posts,
    required this.followedBy,
    required this.following,
  }) : super(key: key);

  final int posts;
  final int followedBy;
  final int following;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        DisplayText(
          data: '$posts Posts',
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
        DisplayText(
          data: '$followedBy followers',
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
        DisplayText(
          data: '$following following',
          fontSize: 14,
          fontWeight: FontWeight.bold,
        )
      ],
    );
  }
}
