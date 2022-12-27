import 'dart:convert';
/// id : "1"
/// title : "SSLC (MALAYALAM MEDIUM)"
/// short_description : ""
/// description : ""
/// language : "english"
/// category_id : "15"
/// sub_category_id : "27"
/// section : "[1,2,3,4,5,6,7,8]"
/// price : "4000 INR +GST"
/// discount_flag : "1"
/// discounted_price : "4000"
/// level : "beginner"
/// user_id : "1"
/// thumbnail : "https://futursity.com/course/uploads/thumbnails/course_thumbnails/course_thumbnail_default_1.jpg?item=5"
/// video_url : "https://player.vimeo.com/external/478328836.sd.mp4?s=2f3f0a9eb12d5099bb1e4e93e75ddf3a8c72b766&profile_id=164"
/// date_added : "1598572800"
/// last_modified : "1639699200"
/// is_top_course : "1"
/// is_admin : "1"
/// status : "active"
/// course_overview_provider : "html5"
/// meta_keywords : ""
/// meta_description : ""
/// external : "0"
/// external_link : ""
/// rating : 0
/// number_of_ratings : 0
/// instructor_name : " "
/// total_enrollment : 662
/// shareable_link : "https://futursity.com/course/home/course/sslc-malayalam-medium/1"
/// full_price : "8000"
/// video_count : "275"

TopCourseModel topCourseModelFromJson(String str) => TopCourseModel.fromJson(json.decode(str));
String topCourseModelToJson(TopCourseModel data) => json.encode(data.toJson());
class TopCourseModel {
  TopCourseModel({
      this.id, 
      this.title, 
      this.shortDescription, 
      this.description, 
      this.language, 
      this.categoryId, 
      this.subCategoryId, 
      this.section, 
      this.price, 
      this.discountFlag, 
      this.discountedPrice, 
      this.level, 
      this.userId, 
      this.thumbnail, 
      this.videoUrl, 
      this.dateAdded, 
      this.lastModified, 
      this.isTopCourse, 
      this.isAdmin, 
      this.status, 
      this.courseOverviewProvider, 
      this.metaKeywords, 
      this.metaDescription, 
      this.external, 
      this.externalLink, 
      this.rating, 
      this.numberOfRatings, 
      this.instructorName, 
      this.totalEnrollment, 
      this.shareableLink, 
      this.fullPrice, 
      this.videoCount,});

  static List<TopCourseModel> listFromJson(List<dynamic> json) {
    return json == null
        ? []
        : json.map((value) => TopCourseModel.fromJson(value)).toList();
  }


  TopCourseModel.fromJson(dynamic json) {
    id = json['id'];
    title = json['title'];
    shortDescription = json['short_description'];
    description = json['description'];
    language = json['language'];
    categoryId = json['category_id'];
    subCategoryId = json['sub_category_id'];
    section = json['section'];
    price = json['price'];
    discountFlag = json['discount_flag'];
    discountedPrice = json['discounted_price'];
    level = json['level'];
    userId = json['user_id'];
    thumbnail = json['thumbnail'];
    videoUrl = json['video_url'];
    dateAdded = json['date_added'];
    lastModified = json['last_modified'];
    isTopCourse = json['is_top_course'];
    isAdmin = json['is_admin'];
    status = json['status'];
    courseOverviewProvider = json['course_overview_provider'];
    metaKeywords = json['meta_keywords'];
    metaDescription = json['meta_description'];
    external = json['external'];
    externalLink = json['external_link'];
    rating = json['rating'];
    numberOfRatings = json['number_of_ratings'];
    instructorName = json['instructor_name'];
    totalEnrollment = json['total_enrollment'];
    shareableLink = json['shareable_link'];
    fullPrice = json['full_price'];
    videoCount = json['video_count'];
  }
  String? id;
  String? title;
  String? shortDescription;
  String? description;
  String? language;
  String? categoryId;
  String? subCategoryId;
  String? section;
  String? price;
  String? discountFlag;
  String? discountedPrice;
  String? level;
  String? userId;
  String? thumbnail;
  String? videoUrl;
  String? dateAdded;
  String? lastModified;
  String? isTopCourse;
  String? isAdmin;
  String? status;
  String? courseOverviewProvider;
  String? metaKeywords;
  String? metaDescription;
  String? external;
  String? externalLink;
  int? rating;
  int? numberOfRatings;
  String? instructorName;
  int? totalEnrollment;
  String? shareableLink;
  String? fullPrice;
  String? videoCount;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['title'] = title;
    map['short_description'] = shortDescription;
    map['description'] = description;
    map['language'] = language;
    map['category_id'] = categoryId;
    map['sub_category_id'] = subCategoryId;
    map['section'] = section;
    map['price'] = price;
    map['discount_flag'] = discountFlag;
    map['discounted_price'] = discountedPrice;
    map['level'] = level;
    map['user_id'] = userId;
    map['thumbnail'] = thumbnail;
    map['video_url'] = videoUrl;
    map['date_added'] = dateAdded;
    map['last_modified'] = lastModified;
    map['is_top_course'] = isTopCourse;
    map['is_admin'] = isAdmin;
    map['status'] = status;
    map['course_overview_provider'] = courseOverviewProvider;
    map['meta_keywords'] = metaKeywords;
    map['meta_description'] = metaDescription;
    map['external'] = external;
    map['external_link'] = externalLink;
    map['rating'] = rating;
    map['number_of_ratings'] = numberOfRatings;
    map['instructor_name'] = instructorName;
    map['total_enrollment'] = totalEnrollment;
    map['shareable_link'] = shareableLink;
    map['full_price'] = fullPrice;
    map['video_count'] = videoCount;
    return map;
  }

}