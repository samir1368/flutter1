// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Welco welcomeFromJson(String str) => Welco.fromJson(json.decode(str));

//String welcomeToJson(Welco data) => json.encode(data.toJson());

class Welco {
  Welco({
    required this.status,
    required this.message,
    required  this.data,
  });

  String status;
  String message;
  List<Datum> data;

  factory Welco.fromJson(Map<String, dynamic> json) => Welco(
    status: json["status"],
    message: json["message"],
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
  );

/*  Map<String, dynamic> toJson() => {
    "status": status,
    "message": message,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };*/
}

class Datum {
  Datum({
    required this.seriesId,
    required this.title,
    required  this.ad,
    required  this.publishDate,
    required this.thumbnail,
    required this.summary,
    required  this.seriesGenres,
    required this.episodes,
    required  this.banner,
    required  this.createDate,
    required this.updateDate,
    required this.likes,
    required this.commentCount,
    required this.episodeCount,
    required  this.user,
    required  this.isFinished,
    required  this.followedByUser,
    required this.visitCount,
    required  this.followCount,
    required this.bundleIds,
  });

  int seriesId;
  String title;
  String ad;
  int publishDate;
  String thumbnail;
  String summary;
  List<SeriesGenre> seriesGenres;
  List<Episode> episodes;
  String banner;
  DateTime createDate;
  DateTime updateDate;
  int likes;
  int commentCount;
  int episodeCount;
  User user;
  bool isFinished;
  bool followedByUser;
  int visitCount;
  int followCount;
  List<BundleId> bundleIds;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    seriesId: json["seriesId"],
    title: json["title"],
    ad: json["ad"],
    publishDate: json["publishDate"],
    thumbnail: json["thumbnail"],
    summary: json["summary"],
    seriesGenres: List<SeriesGenre>.from(json["seriesGenres"].map((x) => SeriesGenre.fromJson(x))),
    episodes: List<Episode>.from(json["episodes"].map((x) => Episode.fromJson(x))),
    banner: json["banner"],
    createDate: DateTime.parse(json["createDate"]),
    updateDate: DateTime.parse(json["updateDate"]),
    likes: json["likes"],
    commentCount: json["commentCount"],
    episodeCount: json["episodeCount"],
    user: User.fromJson(json["user"]),
    isFinished: json["isFinished"],
    followedByUser: json["followedByUser"],
    visitCount: json["visitCount"],
    followCount: json["followCount"],
    bundleIds: List<BundleId>.from(json["bundleIds"].map((x) => BundleId.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "seriesId": seriesId,
    "title": title,
    "ad": ad,
    "publishDate": publishDate,
    "thumbnail": thumbnail,
    "summary": summary,
    "seriesGenres": List<dynamic>.from(seriesGenres.map((x) => x.toJson())),
    "episodes": List<dynamic>.from(episodes.map((x) => x.toJson())),
    "banner": banner,
    "createDate": createDate.toIso8601String(),
    "updateDate": updateDate.toIso8601String(),
    "likes": likes,
    "commentCount": commentCount,
    "episodeCount": episodeCount,
    "user": user.toJson(),
    "isFinished": isFinished,
    "followedByUser": followedByUser,
    "visitCount": visitCount,
    "followCount": followCount,
    "bundleIds": List<dynamic>.from(bundleIds.map((x) => x.toJson())),
  };
}

class BundleId {
  BundleId({
    required  this.bundleId,
    required this.title,
    required this.description,
    required this.image,
    required this.isVisible,
    required this.maxExp,
    required this.minExp,
  });

  int bundleId;
  String title;
  String description;
  String image;
  bool isVisible;
  int maxExp;
  int minExp;

  factory BundleId.fromJson(Map<String, dynamic> json) => BundleId(
    bundleId: json["bundleId"],
    title: json["title"],
    description: json["description"],
    image: json["image"],
    isVisible: json["isVisible"],
    maxExp: json["maxExp"],
    minExp: json["minExp"],
  );

  Map<String, dynamic> toJson() => {
    "bundleId": bundleId,
    "title": title,
    "description": description,
    "image": image,
    "isVisible": isVisible,
    "maxExp": maxExp,
    "minExp": minExp,
  };
}

class Episode {
  Episode({
    required this.episodeId,
    required this.number,
    required this.title,
    required this.thumbnail,
    required this.seriesId,
    required this.price,
    required this.isBought,
    required this.commentCount,
    required this.likes,
  });

  int episodeId;
  String number;
  String title;
  String thumbnail;
  int seriesId;
  int price;
  bool isBought;
  int commentCount;
  int likes;

  factory Episode.fromJson(Map<String, dynamic> json) => Episode(
    episodeId: json["episodeId"],
    number: json["number"],
    title: json["title"],
    thumbnail: json["thumbnail"],
    seriesId: json["seriesId"],
    price: json["price"],
    isBought: json["isBought"],
    commentCount: json["commentCount"],
    likes: json["likes"],
  );

  Map<String, dynamic> toJson() => {
    "episodeId": episodeId,
    "number": number,
    "title": title,
    "thumbnail": thumbnail,
    "seriesId": seriesId,
    "price": price,
    "isBought": isBought,
    "commentCount": commentCount,
    "likes": likes,
  };
}

class SeriesGenre {
  SeriesGenre({
    required  this.genre,
  });

  Genre genre;

  factory SeriesGenre.fromJson(Map<String, dynamic> json) => SeriesGenre(
    genre: Genre.fromJson(json["genre"]),
  );

  Map<String, dynamic> toJson() => {
    "genre": genre.toJson(),
  };
}

class Genre {
  Genre({
    required  this.genreId,
    required  this.name,
    required  this.pic,
    required this.order,
  });

  int genreId;
  String name;
  String pic;
  int order;

  factory Genre.fromJson(Map<String, dynamic> json) => Genre(
    genreId: json["genreId"],
    name: json["name"],
    pic: json["pic"],
    order: json["order"],
  );

  Map<String, dynamic> toJson() => {
    "genreId": genreId,
    "name": name,
    "pic": pic,
    "order": order,
  };
}

class User {
  User({
    required   this.userId,
    required   this.displayName,
    required  this.avatar,
  });

  int userId;
  String displayName;
  String avatar;

  factory User.fromJson(Map<String, dynamic> json) => User(
    userId: json["userId"],
    displayName: json["displayName"],
    avatar: json["avatar"],
  );

  Map<String, dynamic> toJson() => {
    "userId": userId,
    "displayName": displayName,
    "avatar": avatar,
  };
}
