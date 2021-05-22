import 'package:async/async.dart';
import 'package:flutter/material.dart';
import 'package:insta_copy/apis/call_data.dart';
import 'package:insta_copy/model/user_detail.dart';
import 'package:insta_copy/utils/widgets/display_text.dart';
import 'package:insta_copy/view/widgets/user_profile.dart';

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

  List<Widget> loadingWidget() => [
        SizedBox(height: 100),
        Container(
          child: Center(child: CircularProgressIndicator()),
        ),
      ];

  Widget getUserName() {
    return Padding(
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
  }

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
                  UserProfile(user: snapshot.data!.graphql!.user)
                ],
              ],
            );
          },
        ),
      ),
    );
  }
}
