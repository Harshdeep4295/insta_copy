import 'package:flutter/material.dart';
import 'package:insta_copy/model/user_detail.dart';
import 'package:insta_copy/utils/widgets/display_text.dart';

class DisplayPosts extends StatefulWidget {
  final User? user;
  DisplayPosts({required this.user});
  @override
  _DisplayPostsState createState() => _DisplayPostsState();
}

class _DisplayPostsState extends State<DisplayPosts>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(
      length: 3,
      vsync: this,
    );
  }

  Widget getPosts() {
    List<EdgeOwnerToTimelineMediaEdge>? edges =
        widget.user!.edgeOwnerToTimelineMedia!.edges;

    if (edges!.isEmpty) {
      return returnEmpty('No Timeline Post Found');
    }
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 4.0,
        mainAxisSpacing: 4.0,
      ),
      itemCount: edges.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          child: Image.network(
            edges[index].node!.displayUrl!,
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }

  Widget getIGTV() {
    List<EdgeFelixVideoTimelineEdge>? edges =
        widget.user!.edgeFelixVideoTimeline!.edges;

    if (edges!.isEmpty) {
      return returnEmpty('No IGTV Post Found');
    }
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 4.0,
        mainAxisSpacing: 4.0,
      ),
      itemCount: edges.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          child: Image.network(
            edges[index].node!.displayUrl!,
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }

  Widget returnEmpty(String value) {
    return Center(
      child: Container(
        child: DisplayText(data: value),
      ),
    );
  }

  Widget getTagged() {
    List<EdgeFelixVideoTimelineEdge>? edges =
        widget.user!.edgeMediaCollections!.edges;

    if (edges!.isEmpty) {
      return returnEmpty('No Tagged Post Found');
    }
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 4.0,
        mainAxisSpacing: 4.0,
      ),
      itemCount: edges.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          child: Image.network(
            edges[index].node!.displayUrl!,
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      margin: const EdgeInsets.all(8),
      child: Scaffold(
        appBar: TabBar(
          indicatorPadding: const EdgeInsets.symmetric(horizontal: 10),
          labelPadding: const EdgeInsets.only(bottom: 10),
          indicatorColor: Colors.grey.shade600,
          tabs: [
            DisplayText(
              data: "POSTS",
              fontSize: 14,
            ),
            DisplayText(
              data: "IGTV",
              fontSize: 14,
            ),
            DisplayText(
              data: "TAGGED",
              fontSize: 14,
            ),
          ],
          controller: _tabController,
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 18.0),
          child: TabBarView(
            controller: _tabController,
            children: [
              getPosts(),
              getIGTV(),
              getTagged(),
            ],
          ),
        ),
      ),
    );
  }
}
