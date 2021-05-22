import 'package:async/async.dart';
import 'package:flutter/material.dart';
import 'package:insta_copy/apis/call_data.dart';
import 'package:insta_copy/model/user_detail.dart';
import 'package:insta_copy/utils/widgets/display_text.dart';

void main() {
  runApp(MaterialApp(home: InstaDashboard()));
}

class InstaDashboard extends StatefulWidget {
  @override
  _InstaDashboardState createState() => _InstaDashboardState();
}

class _InstaDashboardState extends State<InstaDashboard> {
  AsyncMemoizer _userDetails = new AsyncMemoizer();
  TextEditingController _textEditingController = new TextEditingController();

  Future<UserDetails?> getUserDetails() async {
    if (_textEditingController.value.text.toString().isEmpty) {
      return null;
    }
    return await _userDetails.runOnce(
      () => loadUserDetail(
        _textEditingController.value.text.toString().trim(),
      ),
    );
  }

  Widget displayUserName(String username, bool isVerified) {
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

  Widget followAndMoreButton() {
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
          onPressed: () {},
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

  Widget postAndFollowData(int posts, int followedBy, int following) {
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

  Widget userNameAndStatus(String fullName, String biography) {
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

  Widget userPorfileDetails(User user) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.only(left: 5.0),
        margin: const EdgeInsets.only(left: 10.0, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            displayUserName(
              user.username!,
              user.isVerified!,
            ),
            followAndMoreButton(),
            postAndFollowData(
              user.edgeOwnerToTimelineMedia!.count!,
              user.edgeFollowedBy!.count!,
              user.edgeFollow!.count!,
            ),
            userNameAndStatus(
              user.fullName!,
              user.biography!,
            ),
          ],
        ),
      ),
    );
  }

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

  Widget userProfileWidget(User? user) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      margin: EdgeInsets.only(top: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          profilePic(user!.profilePicUrlHd),
          SizedBox(height: 40),
          userPorfileDetails(user),
        ],
      ),
    );
  }

  List<Widget> loadingWidget() => [
        SizedBox(height: 100),
        Container(
          child: Center(child: CircularProgressIndicator()),
        ),
      ];

  Widget getUserName() => Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: TextFormField(
                controller: _textEditingController,
                decoration: new InputDecoration(
                  hintText: "Enter Username",
                  isDense: true,
                ),
              ),
            ),
            SizedBox(width: 20),
            MaterialButton(
              color: Colors.blue.shade600,
              child: DisplayText(
                data: 'Submit',
                color: Colors.white,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              onPressed: () {
                setState(() {
                  _userDetails = new AsyncMemoizer();
                });
              },
            ),
            SizedBox(width: 20),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: DisplayText(data: 'Instagram - Dashboard'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: FutureBuilder<UserDetails?>(
          future: getUserDetails(),
          builder: (context, snapshot) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                getUserName(),
                if (snapshot.connectionState == ConnectionState.waiting)
                  ...loadingWidget(),
                if (snapshot.hasData && snapshot.data!.graphql != null) ...[
                  userProfileWidget(snapshot.data!.graphql!.user)
                ],
              ],
            );
          },
        ),
      ),
    );
  }
}
