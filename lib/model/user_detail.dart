// To parse this JSON data, do
//
//     final userDetails = userDetailsFromMap(jsonString?);

import 'dart:convert';

class UserDetails {
  UserDetails({
    this.seoCategoryInfos,
    this.loggingPageId,
    this.showSuggestedProfiles,
    this.showFollowDialog,
    this.graphql,
    this.toastContentOnLoad,
    this.showViewShop,
    this.profilePicEditSyncProps,
    this.alwaysShowMessageButtonToProAccount,
  });

  List<List<String>>? seoCategoryInfos;
  String? loggingPageId;
  bool? showSuggestedProfiles;
  bool? showFollowDialog;
  Graphql? graphql;
  dynamic toastContentOnLoad;
  bool? showViewShop;
  dynamic profilePicEditSyncProps;
  bool? alwaysShowMessageButtonToProAccount;

  factory UserDetails.fromJson(String? str) =>
      UserDetails.fromMap(json.decode(str!));

  factory UserDetails.fromMap(Map<String?, dynamic> json) => UserDetails(
        seoCategoryInfos: json["seo_category_infos"] == null
            ? null
            : List<List<String>>.from(json["seo_category_infos"]
                .map((x) => List<String?>.from(x.map((x) => x)))),
        loggingPageId:
            json["logging_page_id"] == null ? null : json["logging_page_id"],
        showSuggestedProfiles: json["show_suggested_profiles"] == null
            ? null
            : json["show_suggested_profiles"],
        showFollowDialog: json["show_follow_dialog"] == null
            ? null
            : json["show_follow_dialog"],
        graphql:
            json["graphql"] == null ? null : Graphql.fromMap(json["graphql"]),
        toastContentOnLoad: json["toast_content_on_load"],
        showViewShop:
            json["show_view_shop"] == null ? null : json["show_view_shop"],
        profilePicEditSyncProps: json["profile_pic_edit_sync_props"],
        alwaysShowMessageButtonToProAccount:
            json["always_show_message_button_to_pro_account"] == null
                ? null
                : json["always_show_message_button_to_pro_account"],
      );
}

class Graphql {
  Graphql({
    this.user,
  });

  User? user;

  factory Graphql.fromJson(String? str) => Graphql.fromMap(json.decode(str!));

  factory Graphql.fromMap(Map<String?, dynamic> json) => Graphql(
        user: json["user"] == null ? null : User.fromMap(json["user"]),
      );
}

class User {
  User({
    this.biography,
    this.blockedByViewer,
    this.restrictedByViewer,
    this.countryBlock,
    this.externalUrl,
    this.externalUrlLinkshimmed,
    this.edgeFollowedBy,
    this.fbid,
    this.followedByViewer,
    this.edgeFollow,
    this.followsViewer,
    this.fullName,
    this.hasArEffects,
    this.hasClips,
    this.hasGuides,
    this.hasChannel,
    this.hasBlockedViewer,
    this.highlightReelCount,
    this.hasRequestedViewer,
    this.hideLikeAndViewCounts,
    this.id,
    this.isBusinessAccount,
    this.isProfessionalAccount,
    this.isJoinedRecently,
    this.businessContactMethod,
    this.businessEmail,
    this.businessPhoneNumber,
    this.businessCategoryName,
    this.overallCategoryName,
    this.categoryEnum,
    this.categoryName,
    this.isPrivate,
    this.isVerified,
    this.edgeMutualFollowedBy,
    this.profilePicUrl,
    this.profilePicUrlHd,
    this.requestedByViewer,
    this.shouldShowCategory,
    this.shouldShowPublicContacts,
    this.username,
    this.connectedFbPage,
    this.edgeFelixVideoTimeline,
    this.edgeOwnerToTimelineMedia,
    this.edgeSavedMedia,
    this.edgeMediaCollections,
  });

  String? biography;
  bool? blockedByViewer;
  bool? restrictedByViewer;
  bool? countryBlock;
  String? externalUrl;
  String? externalUrlLinkshimmed;
  EdgeFollowClass? edgeFollowedBy;
  String? fbid;
  bool? followedByViewer;
  EdgeFollowClass? edgeFollow;
  bool? followsViewer;
  String? fullName;
  bool? hasArEffects;
  bool? hasClips;
  bool? hasGuides;
  bool? hasChannel;
  bool? hasBlockedViewer;
  int? highlightReelCount;
  bool? hasRequestedViewer;
  bool? hideLikeAndViewCounts;
  String? id;
  bool? isBusinessAccount;
  bool? isProfessionalAccount;
  bool? isJoinedRecently;
  dynamic businessContactMethod;
  String? businessEmail;
  dynamic businessPhoneNumber;
  String? businessCategoryName;
  dynamic overallCategoryName;
  String? categoryEnum;
  dynamic categoryName;
  bool? isPrivate;
  bool? isVerified;
  EdgeMutualFollowedBy? edgeMutualFollowedBy;
  String? profilePicUrl;
  String? profilePicUrlHd;
  bool? requestedByViewer;
  bool? shouldShowCategory;
  bool? shouldShowPublicContacts;
  String? username;
  dynamic connectedFbPage;
  EdgeFelixVideoTimelineClass? edgeFelixVideoTimeline;
  EdgeOwnerToTimelineMedia? edgeOwnerToTimelineMedia;
  EdgeFelixVideoTimelineClass? edgeSavedMedia;
  EdgeFelixVideoTimelineClass? edgeMediaCollections;

  factory User.fromJson(String? str) => User.fromMap(json.decode(str!));

  factory User.fromMap(Map<String?, dynamic> json) => User(
        biography: json["biography"] == null ? null : json["biography"],
        blockedByViewer: json["blocked_by_viewer"] == null
            ? null
            : json["blocked_by_viewer"],
        restrictedByViewer: json["restricted_by_viewer"] == null
            ? null
            : json["restricted_by_viewer"],
        countryBlock:
            json["country_block"] == null ? null : json["country_block"],
        externalUrl: json["external_url"] == null ? null : json["external_url"],
        externalUrlLinkshimmed: json["external_url_linkshimmed"] == null
            ? null
            : json["external_url_linkshimmed"],
        edgeFollowedBy: json["edge_followed_by"] == null
            ? null
            : EdgeFollowClass.fromMap(json["edge_followed_by"]),
        fbid: json["fbid"] == null ? null : json["fbid"],
        followedByViewer: json["followed_by_viewer"] == null
            ? null
            : json["followed_by_viewer"],
        edgeFollow: json["edge_follow"] == null
            ? null
            : EdgeFollowClass.fromMap(json["edge_follow"]),
        followsViewer:
            json["follows_viewer"] == null ? null : json["follows_viewer"],
        fullName: json["full_name"] == null ? null : json["full_name"],
        hasArEffects:
            json["has_ar_effects"] == null ? null : json["has_ar_effects"],
        hasClips: json["has_clips"] == null ? null : json["has_clips"],
        hasGuides: json["has_guides"] == null ? null : json["has_guides"],
        hasChannel: json["has_channel"] == null ? null : json["has_channel"],
        hasBlockedViewer: json["has_blocked_viewer"] == null
            ? null
            : json["has_blocked_viewer"],
        highlightReelCount: json["highlight_reel_count"] == null
            ? null
            : json["highlight_reel_count"],
        hasRequestedViewer: json["has_requested_viewer"] == null
            ? null
            : json["has_requested_viewer"],
        hideLikeAndViewCounts: json["hide_like_and_view_counts"] == null
            ? null
            : json["hide_like_and_view_counts"],
        id: json["id"] == null ? null : json["id"],
        isBusinessAccount: json["is_business_account"] == null
            ? null
            : json["is_business_account"],
        isProfessionalAccount: json["is_professional_account"] == null
            ? null
            : json["is_professional_account"],
        isJoinedRecently: json["is_joined_recently"] == null
            ? null
            : json["is_joined_recently"],
        businessContactMethod: json["business_contact_method"],
        businessEmail:
            json["business_email"] == null ? null : json["business_email"],
        businessPhoneNumber: json["business_phone_number"],
        businessCategoryName: json["business_category_name"] == null
            ? null
            : json["business_category_name"],
        overallCategoryName: json["overall_category_name"],
        categoryEnum:
            json["category_enum"] == null ? null : json["category_enum"],
        categoryName: json["category_name"],
        isPrivate: json["is_private"] == null ? null : json["is_private"],
        isVerified: json["is_verified"] == null ? null : json["is_verified"],
        edgeMutualFollowedBy: json["edge_mutual_followed_by"] == null
            ? null
            : EdgeMutualFollowedBy.fromMap(json["edge_mutual_followed_by"]),
        profilePicUrl:
            json["profile_pic_url"] == null ? null : json["profile_pic_url"],
        profilePicUrlHd: json["profile_pic_url_hd"] == null
            ? null
            : json["profile_pic_url_hd"],
        requestedByViewer: json["requested_by_viewer"] == null
            ? null
            : json["requested_by_viewer"],
        shouldShowCategory: json["should_show_category"] == null
            ? null
            : json["should_show_category"],
        shouldShowPublicContacts: json["should_show_public_contacts"] == null
            ? null
            : json["should_show_public_contacts"],
        username: json["username"] == null ? null : json["username"],
        connectedFbPage: json["connected_fb_page"],
        edgeFelixVideoTimeline: json["edge_felix_video_timeline"] == null
            ? null
            : EdgeFelixVideoTimelineClass.fromMap(
                json["edge_felix_video_timeline"]),
        edgeOwnerToTimelineMedia: json["edge_owner_to_timeline_media"] == null
            ? null
            : EdgeOwnerToTimelineMedia.fromMap(
                json["edge_owner_to_timeline_media"]),
        edgeSavedMedia: json["edge_saved_media"] == null
            ? null
            : EdgeFelixVideoTimelineClass.fromMap(json["edge_saved_media"]),
        edgeMediaCollections: json["edge_media_collections"] == null
            ? null
            : EdgeFelixVideoTimelineClass.fromMap(
                json["edge_media_collections"]),
      );
}

class EdgeFelixVideoTimelineClass {
  EdgeFelixVideoTimelineClass({
    this.count,
    this.pageInfo,
    this.edges,
  });

  int? count;
  PageInfo? pageInfo;
  List<EdgeFelixVideoTimelineEdge>? edges;

  factory EdgeFelixVideoTimelineClass.fromJson(String? str) =>
      EdgeFelixVideoTimelineClass.fromMap(json.decode(str!));

  factory EdgeFelixVideoTimelineClass.fromMap(Map<String?, dynamic> json) =>
      EdgeFelixVideoTimelineClass(
        count: json["count"] == null ? null : json["count"],
        pageInfo: json["page_info"] == null
            ? null
            : PageInfo.fromMap(json["page_info"]),
        edges: json["edges"] == null
            ? null
            : List<EdgeFelixVideoTimelineEdge>.from(json["edges"]
                .map((x) => EdgeFelixVideoTimelineEdge.fromMap(x))),
      );
}

class EdgeFelixVideoTimelineEdge {
  EdgeFelixVideoTimelineEdge({
    this.node,
  });

  PurpleNode? node;

  factory EdgeFelixVideoTimelineEdge.fromJson(String? str) =>
      EdgeFelixVideoTimelineEdge.fromMap(json.decode(str!));

  factory EdgeFelixVideoTimelineEdge.fromMap(Map<String?, dynamic> json) =>
      EdgeFelixVideoTimelineEdge(
        node: json["node"] == null ? null : PurpleNode.fromMap(json["node"]),
      );
}

class PurpleNode {
  PurpleNode({
    this.typename,
    this.id,
    this.shortcode,
    this.dimensions,
    this.displayUrl,
    this.edgeMediaToTaggedUser,
    this.factCheckOverallRating,
    this.factCheckInformation,
    this.gatingInfo,
    this.sharingFrictionInfo,
    this.mediaOverlayInfo,
    this.mediaPreview,
    this.owner,
    this.isVideo,
    this.accessibilityCaption,
    this.dashInfo,
    this.hasAudio,
    this.trackingToken,
    this.videoUrl,
    this.videoViewCount,
    this.edgeMediaToCaption,
    this.edgeMediaToComment,
    this.commentsDisabled,
    this.takenAtTimestamp,
    this.edgeLikedBy,
    this.edgeMediaPreviewLike,
    this.location,
    this.thumbnailSrc,
    this.thumbnailResources,
    this.felixProfileGridCrop,
    this.encodingStatus,
    this.isPublished,
    this.productType,
    this.title,
    this.videoDuration,
  });

  PurpleTypename? typename;
  String? id;
  String? shortcode;
  Dimensions? dimensions;
  String? displayUrl;
  EdgeMediaTo? edgeMediaToTaggedUser;
  dynamic factCheckOverallRating;
  dynamic factCheckInformation;
  dynamic gatingInfo;
  SharingFrictionInfo? sharingFrictionInfo;
  dynamic mediaOverlayInfo;
  String? mediaPreview;
  Owner? owner;
  bool? isVideo;
  dynamic accessibilityCaption;
  DashInfo? dashInfo;
  bool? hasAudio;
  String? trackingToken;
  String? videoUrl;
  int? videoViewCount;
  EdgeMediaTo? edgeMediaToCaption;
  EdgeFollowClass? edgeMediaToComment;
  bool? commentsDisabled;
  int? takenAtTimestamp;
  EdgeFollowClass? edgeLikedBy;
  EdgeFollowClass? edgeMediaPreviewLike;
  dynamic location;
  String? thumbnailSrc;
  List<ThumbnailResource>? thumbnailResources;
  dynamic felixProfileGridCrop;
  dynamic encodingStatus;
  bool? isPublished;
  ProductType? productType;
  String? title;
  double? videoDuration;

  factory PurpleNode.fromJson(String? str) =>
      PurpleNode.fromMap(json.decode(str!));

  factory PurpleNode.fromMap(Map<String?, dynamic> json) => PurpleNode(
        typename: json["__typename"] == null
            ? null
            : purpleTypenameValues.map[json["__typename"]],
        id: json["id"] == null ? null : json["id"],
        shortcode: json["shortcode"] == null ? null : json["shortcode"],
        dimensions: json["dimensions"] == null
            ? null
            : Dimensions.fromMap(json["dimensions"]),
        displayUrl: json["display_url"] == null ? null : json["display_url"],
        edgeMediaToTaggedUser: json["edge_media_to_tagged_user"] == null
            ? null
            : EdgeMediaTo.fromMap(json["edge_media_to_tagged_user"]),
        factCheckOverallRating: json["fact_check_overall_rating"],
        factCheckInformation: json["fact_check_information"],
        gatingInfo: json["gating_info"],
        sharingFrictionInfo: json["sharing_friction_info"] == null
            ? null
            : SharingFrictionInfo.fromMap(json["sharing_friction_info"]),
        mediaOverlayInfo: json["media_overlay_info"],
        mediaPreview:
            json["media_preview"] == null ? null : json["media_preview"],
        owner: json["owner"] == null ? null : Owner.fromMap(json["owner"]),
        isVideo: json["is_video"] == null ? null : json["is_video"],
        accessibilityCaption: json["accessibility_caption"],
        dashInfo: json["dash_info"] == null
            ? null
            : DashInfo.fromMap(json["dash_info"]),
        hasAudio: json["has_audio"] == null ? null : json["has_audio"],
        trackingToken:
            json["tracking_token"] == null ? null : json["tracking_token"],
        videoUrl: json["video_url"] == null ? null : json["video_url"],
        videoViewCount:
            json["video_view_count"] == null ? null : json["video_view_count"],
        edgeMediaToCaption: json["edge_media_to_caption"] == null
            ? null
            : EdgeMediaTo.fromMap(json["edge_media_to_caption"]),
        edgeMediaToComment: json["edge_media_to_comment"] == null
            ? null
            : EdgeFollowClass.fromMap(json["edge_media_to_comment"]),
        commentsDisabled: json["comments_disabled"] == null
            ? null
            : json["comments_disabled"],
        takenAtTimestamp: json["taken_at_timestamp"] == null
            ? null
            : json["taken_at_timestamp"],
        edgeLikedBy: json["edge_liked_by"] == null
            ? null
            : EdgeFollowClass.fromMap(json["edge_liked_by"]),
        edgeMediaPreviewLike: json["edge_media_preview_like"] == null
            ? null
            : EdgeFollowClass.fromMap(json["edge_media_preview_like"]),
        location: json["location"],
        thumbnailSrc:
            json["thumbnail_src"] == null ? null : json["thumbnail_src"],
        thumbnailResources: json["thumbnail_resources"] == null
            ? null
            : List<ThumbnailResource>.from(json["thumbnail_resources"]
                .map((x) => ThumbnailResource.fromMap(x))),
        felixProfileGridCrop: json["felix_profile_grid_crop"],
        encodingStatus: json["encoding_status"],
        isPublished: json["is_published"] == null ? null : json["is_published"],
        productType: json["product_type"] == null
            ? null
            : productTypeValues.map[json["product_type"]],
        title: json["title"] == null ? null : json["title"],
        videoDuration: json["video_duration"] == null
            ? null
            : json["video_duration"].toDouble(),
      );
}

class DashInfo {
  DashInfo({
    this.isDashEligible,
    this.videoDashManifest,
    this.numberOfQualities,
  });

  bool? isDashEligible;
  String? videoDashManifest;
  int? numberOfQualities;

  factory DashInfo.fromJson(String? str) => DashInfo.fromMap(json.decode(str!));

  String? toJson() => json.encode(toMap());

  factory DashInfo.fromMap(Map<String?, dynamic> json) => DashInfo(
        isDashEligible:
            json["is_dash_eligible"] == null ? null : json["is_dash_eligible"],
        videoDashManifest: json["video_dash_manifest"] == null
            ? null
            : json["video_dash_manifest"],
        numberOfQualities: json["number_of_qualities"] == null
            ? null
            : json["number_of_qualities"],
      );

  Map<String?, dynamic> toMap() => {
        "is_dash_eligible": isDashEligible == null ? null : isDashEligible,
        "video_dash_manifest":
            videoDashManifest == null ? null : videoDashManifest,
        "number_of_qualities":
            numberOfQualities == null ? null : numberOfQualities,
      };
}

class Dimensions {
  Dimensions({
    this.height,
    this.width,
  });

  int? height;
  int? width;

  factory Dimensions.fromJson(String? str) =>
      Dimensions.fromMap(json.decode(str!));

  String? toJson() => json.encode(toMap());

  factory Dimensions.fromMap(Map<String?, dynamic> json) => Dimensions(
        height: json["height"] == null ? null : json["height"],
        width: json["width"] == null ? null : json["width"],
      );

  Map<String?, dynamic> toMap() => {
        "height": height == null ? null : height,
        "width": width == null ? null : width,
      };
}

class EdgeFollowClass {
  EdgeFollowClass({
    this.count,
  });

  int? count;

  factory EdgeFollowClass.fromJson(String? str) =>
      EdgeFollowClass.fromMap(json.decode(str!));

  String? toJson() => json.encode(toMap());

  factory EdgeFollowClass.fromMap(Map<String?, dynamic> json) =>
      EdgeFollowClass(
        count: json["count"] == null ? null : json["count"],
      );

  Map<String?, dynamic> toMap() => {
        "count": count == null ? null : count,
      };
}

class EdgeMediaTo {
  EdgeMediaTo({
    this.edges,
  });

  List<EdgeMediaToCaptionEdge>? edges;

  factory EdgeMediaTo.fromJson(String? str) =>
      EdgeMediaTo.fromMap(json.decode(str!));

  String? toJson() => json.encode(toMap());

  factory EdgeMediaTo.fromMap(Map<String?, dynamic> json) => EdgeMediaTo(
        edges: json["edges"] == null
            ? null
            : List<EdgeMediaToCaptionEdge>.from(
                json["edges"].map((x) => EdgeMediaToCaptionEdge.fromMap(x))),
      );

  Map<String?, dynamic> toMap() => {
        "edges": edges == null
            ? null
            : List<dynamic>.from(edges!.map((x) => x.toMap())),
      };
}

class EdgeMediaToCaptionEdge {
  EdgeMediaToCaptionEdge({
    this.node,
  });

  FluffyNode? node;

  factory EdgeMediaToCaptionEdge.fromJson(String? str) =>
      EdgeMediaToCaptionEdge.fromMap(json.decode(str!));

  String? toJson() => json.encode(toMap());

  factory EdgeMediaToCaptionEdge.fromMap(Map<String?, dynamic> json) =>
      EdgeMediaToCaptionEdge(
        node: json["node"] == null ? null : FluffyNode.fromMap(json["node"]),
      );

  Map<String?, dynamic> toMap() => {
        "node": node == null ? null : node?.toMap(),
      };
}

class FluffyNode {
  FluffyNode({
    this.text,
  });

  String? text;

  factory FluffyNode.fromJson(String? str) =>
      FluffyNode.fromMap(json.decode(str!));

  String? toJson() => json.encode(toMap());

  factory FluffyNode.fromMap(Map<String?, dynamic> json) => FluffyNode(
        text: json["text"] == null ? null : json["text"],
      );

  Map<String?, dynamic> toMap() => {
        "text": text == null ? null : text,
      };
}

class Owner {
  Owner({
    this.id,
    this.username,
  });

  String? id;
  String? username;

  factory Owner.fromJson(String? str) => Owner.fromMap(json.decode(str!));

  factory Owner.fromMap(Map<String?, dynamic> json) => Owner(
        id: json["id"] == null ? null : json["id"],
        username: json["username"] == null ? null : json["username"],
      );
}

enum ProductType { IGTV }

final productTypeValues = EnumValues({"igtv": ProductType.IGTV});

class SharingFrictionInfo {
  SharingFrictionInfo({
    this.shouldHaveSharingFriction,
    this.bloksAppUrl,
  });

  bool? shouldHaveSharingFriction;
  dynamic bloksAppUrl;

  factory SharingFrictionInfo.fromJson(String? str) =>
      SharingFrictionInfo.fromMap(json.decode(str!));

  String? toJson() => json.encode(toMap());

  factory SharingFrictionInfo.fromMap(Map<String?, dynamic> json) =>
      SharingFrictionInfo(
        shouldHaveSharingFriction: json["should_have_sharing_friction"] == null
            ? null
            : json["should_have_sharing_friction"],
        bloksAppUrl: json["bloks_app_url"],
      );

  Map<String?, dynamic> toMap() => {
        "should_have_sharing_friction": shouldHaveSharingFriction == null
            ? null
            : shouldHaveSharingFriction,
        "bloks_app_url": bloksAppUrl,
      };
}

class ThumbnailResource {
  ThumbnailResource({
    this.src,
    this.configWidth,
    this.configHeight,
  });

  String? src;
  int? configWidth;
  int? configHeight;

  factory ThumbnailResource.fromJson(String? str) =>
      ThumbnailResource.fromMap(json.decode(str!));

  String? toJson() => json.encode(toMap());

  factory ThumbnailResource.fromMap(Map<String?, dynamic> json) =>
      ThumbnailResource(
        src: json["src"] == null ? null : json["src"],
        configWidth: json["config_width"] == null ? null : json["config_width"],
        configHeight:
            json["config_height"] == null ? null : json["config_height"],
      );

  Map<String?, dynamic> toMap() => {
        "src": src == null ? null : src,
        "config_width": configWidth == null ? null : configWidth,
        "config_height": configHeight == null ? null : configHeight,
      };
}

enum PurpleTypename { GRAPH_VIDEO }

final purpleTypenameValues =
    EnumValues({"GraphVideo": PurpleTypename.GRAPH_VIDEO});

class PageInfo {
  PageInfo({
    this.hasNextPage,
    this.endCursor,
  });

  bool? hasNextPage;
  String? endCursor;

  factory PageInfo.fromJson(String? str) => PageInfo.fromMap(json.decode(str!));

  String? toJson() => json.encode(toMap());

  factory PageInfo.fromMap(Map<String?, dynamic> json) => PageInfo(
        hasNextPage:
            json["has_next_page"] == null ? null : json["has_next_page"],
        endCursor: json["end_cursor"] == null ? null : json["end_cursor"],
      );

  Map<String?, dynamic> toMap() => {
        "has_next_page": hasNextPage == null ? null : hasNextPage,
        "end_cursor": endCursor == null ? null : endCursor,
      };
}

class EdgeMutualFollowedBy {
  EdgeMutualFollowedBy({
    this.count,
    this.edges,
  });

  int? count;
  List<EdgeMutualFollowedByEdge>? edges;

  factory EdgeMutualFollowedBy.fromJson(String? str) =>
      EdgeMutualFollowedBy.fromMap(json.decode(str!));

  factory EdgeMutualFollowedBy.fromMap(Map<String?, dynamic> json) =>
      EdgeMutualFollowedBy(
        count: json["count"] == null ? null : json["count"],
        edges: json["edges"] == null
            ? null
            : List<EdgeMutualFollowedByEdge>.from(
                json["edges"].map((x) => EdgeMutualFollowedByEdge.fromMap(x))),
      );
}

class EdgeMutualFollowedByEdge {
  EdgeMutualFollowedByEdge({
    this.node,
  });

  TentacledNode? node;

  factory EdgeMutualFollowedByEdge.fromJson(String? str) =>
      EdgeMutualFollowedByEdge.fromMap(json.decode(str!));

  String? toJson() => json.encode(toMap());

  factory EdgeMutualFollowedByEdge.fromMap(Map<String?, dynamic> json) =>
      EdgeMutualFollowedByEdge(
        node: json["node"] == null ? null : TentacledNode.fromMap(json["node"]),
      );

  Map<String?, dynamic> toMap() => {
        "node": node == null ? null : node?.toMap(),
      };
}

class TentacledNode {
  TentacledNode({
    this.username,
  });

  String? username;

  factory TentacledNode.fromJson(String? str) =>
      TentacledNode.fromMap(json.decode(str!));

  String? toJson() => json.encode(toMap());

  factory TentacledNode.fromMap(Map<String?, dynamic> json) => TentacledNode(
        username: json["username"] == null ? null : json["username"],
      );

  Map<String?, dynamic> toMap() => {
        "username": username == null ? null : username,
      };
}

class EdgeOwnerToTimelineMedia {
  EdgeOwnerToTimelineMedia({
    this.count,
    this.pageInfo,
    this.edges,
  });

  int? count;
  PageInfo? pageInfo;
  List<EdgeOwnerToTimelineMediaEdge>? edges;

  factory EdgeOwnerToTimelineMedia.fromJson(String? str) =>
      EdgeOwnerToTimelineMedia.fromMap(json.decode(str!));

  factory EdgeOwnerToTimelineMedia.fromMap(Map<String?, dynamic> json) =>
      EdgeOwnerToTimelineMedia(
        count: json["count"] == null ? null : json["count"],
        pageInfo: json["page_info"] == null
            ? null
            : PageInfo.fromMap(json["page_info"]),
        edges: json["edges"] == null
            ? null
            : List<EdgeOwnerToTimelineMediaEdge>.from(json["edges"]
                .map((x) => EdgeOwnerToTimelineMediaEdge.fromMap(x))),
      );
}

class EdgeOwnerToTimelineMediaEdge {
  EdgeOwnerToTimelineMediaEdge({
    this.node,
  });

  StickyNode? node;

  factory EdgeOwnerToTimelineMediaEdge.fromJson(String? str) =>
      EdgeOwnerToTimelineMediaEdge.fromMap(json.decode(str!));

  factory EdgeOwnerToTimelineMediaEdge.fromMap(Map<String?, dynamic> json) =>
      EdgeOwnerToTimelineMediaEdge(
        node: json["node"] == null ? null : StickyNode.fromMap(json["node"]),
      );
}

class StickyNode {
  StickyNode({
    this.typename,
    this.id,
    this.shortcode,
    this.dimensions,
    this.displayUrl,
    this.edgeMediaToTaggedUser,
    this.factCheckOverallRating,
    this.factCheckInformation,
    this.gatingInfo,
    this.sharingFrictionInfo,
    this.mediaOverlayInfo,
    this.mediaPreview,
    this.owner,
    this.isVideo,
    this.accessibilityCaption,
    this.edgeMediaToCaption,
    this.edgeMediaToComment,
    this.commentsDisabled,
    this.takenAtTimestamp,
    this.edgeLikedBy,
    this.edgeMediaPreviewLike,
    this.location,
    this.thumbnailSrc,
    this.thumbnailResources,
    this.edgeSidecarToChildren,
  });

  FluffyTypename? typename;
  String? id;
  String? shortcode;
  Dimensions? dimensions;
  String? displayUrl;
  EdgeMediaTo? edgeMediaToTaggedUser;
  dynamic factCheckOverallRating;
  dynamic factCheckInformation;
  dynamic gatingInfo;
  SharingFrictionInfo? sharingFrictionInfo;
  dynamic mediaOverlayInfo;
  String? mediaPreview;
  Owner? owner;
  bool? isVideo;
  String? accessibilityCaption;
  EdgeMediaTo? edgeMediaToCaption;
  EdgeFollowClass? edgeMediaToComment;
  bool? commentsDisabled;
  int? takenAtTimestamp;
  EdgeFollowClass? edgeLikedBy;
  EdgeFollowClass? edgeMediaPreviewLike;
  dynamic location;
  String? thumbnailSrc;
  List<ThumbnailResource>? thumbnailResources;
  EdgeSidecarToChildren? edgeSidecarToChildren;

  factory StickyNode.fromJson(String? str) =>
      StickyNode.fromMap(json.decode(str!));

  factory StickyNode.fromMap(Map<String?, dynamic> json) => StickyNode(
        typename: json["__typename"] == null
            ? null
            : fluffyTypenameValues.map[json["__typename"]],
        id: json["id"] == null ? null : json["id"],
        shortcode: json["shortcode"] == null ? null : json["shortcode"],
        dimensions: json["dimensions"] == null
            ? null
            : Dimensions.fromMap(json["dimensions"]),
        displayUrl: json["display_url"] == null ? null : json["display_url"],
        edgeMediaToTaggedUser: json["edge_media_to_tagged_user"] == null
            ? null
            : EdgeMediaTo.fromMap(json["edge_media_to_tagged_user"]),
        factCheckOverallRating: json["fact_check_overall_rating"],
        factCheckInformation: json["fact_check_information"],
        gatingInfo: json["gating_info"],
        sharingFrictionInfo: json["sharing_friction_info"] == null
            ? null
            : SharingFrictionInfo.fromMap(json["sharing_friction_info"]),
        mediaOverlayInfo: json["media_overlay_info"],
        mediaPreview:
            json["media_preview"] == null ? null : json["media_preview"],
        owner: json["owner"] == null ? null : Owner.fromMap(json["owner"]),
        isVideo: json["is_video"] == null ? null : json["is_video"],
        accessibilityCaption: json["accessibility_caption"] == null
            ? null
            : json["accessibility_caption"],
        edgeMediaToCaption: json["edge_media_to_caption"] == null
            ? null
            : EdgeMediaTo.fromMap(json["edge_media_to_caption"]),
        edgeMediaToComment: json["edge_media_to_comment"] == null
            ? null
            : EdgeFollowClass.fromMap(json["edge_media_to_comment"]),
        commentsDisabled: json["comments_disabled"] == null
            ? null
            : json["comments_disabled"],
        takenAtTimestamp: json["taken_at_timestamp"] == null
            ? null
            : json["taken_at_timestamp"],
        edgeLikedBy: json["edge_liked_by"] == null
            ? null
            : EdgeFollowClass.fromMap(json["edge_liked_by"]),
        edgeMediaPreviewLike: json["edge_media_preview_like"] == null
            ? null
            : EdgeFollowClass.fromMap(json["edge_media_preview_like"]),
        location: json["location"],
        thumbnailSrc:
            json["thumbnail_src"] == null ? null : json["thumbnail_src"],
        thumbnailResources: json["thumbnail_resources"] == null
            ? null
            : List<ThumbnailResource>.from(json["thumbnail_resources"]
                .map((x) => ThumbnailResource.fromMap(x))),
        edgeSidecarToChildren: json["edge_sidecar_to_children"] == null
            ? null
            : EdgeSidecarToChildren.fromMap(json["edge_sidecar_to_children"]),
      );
}

class EdgeSidecarToChildren {
  EdgeSidecarToChildren({
    this.edges,
  });

  List<EdgeSidecarToChildrenEdge>? edges;

  factory EdgeSidecarToChildren.fromJson(String? str) =>
      EdgeSidecarToChildren.fromMap(json.decode(str!));

  factory EdgeSidecarToChildren.fromMap(Map<String?, dynamic> json) =>
      EdgeSidecarToChildren(
        edges: json["edges"] == null
            ? null
            : List<EdgeSidecarToChildrenEdge>.from(
                json["edges"].map((x) => EdgeSidecarToChildrenEdge.fromMap(x))),
      );
}

class EdgeSidecarToChildrenEdge {
  EdgeSidecarToChildrenEdge({
    this.node,
  });

  IndigoNode? node;

  factory EdgeSidecarToChildrenEdge.fromJson(String? str) =>
      EdgeSidecarToChildrenEdge.fromMap(json.decode(str!));

  factory EdgeSidecarToChildrenEdge.fromMap(Map<String?, dynamic> json) =>
      EdgeSidecarToChildrenEdge(
        node: json["node"] == null ? null : IndigoNode.fromMap(json["node"]),
      );
}

class IndigoNode {
  IndigoNode({
    this.typename,
    this.id,
    this.shortcode,
    this.dimensions,
    this.displayUrl,
    this.edgeMediaToTaggedUser,
    this.factCheckOverallRating,
    this.factCheckInformation,
    this.gatingInfo,
    this.sharingFrictionInfo,
    this.mediaOverlayInfo,
    this.mediaPreview,
    this.owner,
    this.isVideo,
    this.accessibilityCaption,
  });

  FluffyTypename? typename;
  String? id;
  String? shortcode;
  Dimensions? dimensions;
  String? displayUrl;
  EdgeMediaTo? edgeMediaToTaggedUser;
  dynamic factCheckOverallRating;
  dynamic factCheckInformation;
  dynamic gatingInfo;
  SharingFrictionInfo? sharingFrictionInfo;
  dynamic mediaOverlayInfo;
  String? mediaPreview;
  Owner? owner;
  bool? isVideo;
  String? accessibilityCaption;

  factory IndigoNode.fromJson(String? str) =>
      IndigoNode.fromMap(json.decode(str!));

  factory IndigoNode.fromMap(Map<String?, dynamic> json) => IndigoNode(
        typename: json["__typename"] == null
            ? null
            : fluffyTypenameValues.map[json["__typename"]],
        id: json["id"] == null ? null : json["id"],
        shortcode: json["shortcode"] == null ? null : json["shortcode"],
        dimensions: json["dimensions"] == null
            ? null
            : Dimensions.fromMap(json["dimensions"]),
        displayUrl: json["display_url"] == null ? null : json["display_url"],
        edgeMediaToTaggedUser: json["edge_media_to_tagged_user"] == null
            ? null
            : EdgeMediaTo.fromMap(json["edge_media_to_tagged_user"]),
        factCheckOverallRating: json["fact_check_overall_rating"],
        factCheckInformation: json["fact_check_information"],
        gatingInfo: json["gating_info"],
        sharingFrictionInfo: json["sharing_friction_info"] == null
            ? null
            : SharingFrictionInfo.fromMap(json["sharing_friction_info"]),
        mediaOverlayInfo: json["media_overlay_info"],
        mediaPreview:
            json["media_preview"] == null ? null : json["media_preview"],
        owner: json["owner"] == null ? null : Owner.fromMap(json["owner"]),
        isVideo: json["is_video"] == null ? null : json["is_video"],
        accessibilityCaption: json["accessibility_caption"] == null
            ? null
            : json["accessibility_caption"],
      );
}

enum FluffyTypename { GRAPH_IMAGE, GRAPH_SIDECAR }

final fluffyTypenameValues = EnumValues({
  "GraphImage": FluffyTypename.GRAPH_IMAGE,
  "GraphSidecar": FluffyTypename.GRAPH_SIDECAR
});

class EnumValues<T> {
  late Map<String?, T> map;
  late Map<T, String?> reverseMap;

  EnumValues(this.map);

  Map<T, String?> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
