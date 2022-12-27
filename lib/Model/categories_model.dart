import 'dart:convert';

/// id : "15"
/// code : "0d0dca09bc"
/// name : "REGULAR EDUCATION (STATE AND CBSE)"
/// parent : "0"
/// slug : "regular-education-state-and-cbse"
/// date_added : "1598659200"
/// last_modified : "1599004800"
/// font_awesome_class : "fas fa-chess"
/// thumbnail : "https://futursity.com/course/uploads/thumbnails/category_thumbnails/8da0c6045cb9b9506cbe15529486fee0.jpg?item=26"
/// order : "1"
/// number_of_courses : 6

CategoriesModel categoriesModlFromJson(String str) =>
    CategoriesModel.fromJson(json.decode(str));

String categoriesModlToJson(CategoriesModel data) => json.encode(data.toJson());

class CategoriesModel {
  CategoriesModel({
    this.id,
    this.code,
    this.name,
    this.parent,
    this.slug,
    this.dateAdded,
    this.lastModified,
    this.fontAwesomeClass,
    this.thumbnail,
    this.order,
    this.numberOfCourses,
  });

  static List<CategoriesModel> listFromJson(List<dynamic> json) {
    return json == null
        ? []
        : json.map((value) => CategoriesModel.fromJson(value)).toList();
  }

  CategoriesModel.fromJson(dynamic json) {
    id = json['id'];
    code = json['code'];
    name = json['name'];
    parent = json['parent'];
    slug = json['slug'];
    dateAdded = json['date_added'];
    lastModified = json['last_modified'];
    fontAwesomeClass = json['font_awesome_class'];
    thumbnail = json['thumbnail'];
    order = json['order'];
    numberOfCourses = json['number_of_courses'];
  }

  String? id;
  String? code;
  String? name;
  String? parent;
  String? slug;
  String? dateAdded;
  String? lastModified;
  String? fontAwesomeClass;
  String? thumbnail;
  String? order;
  int? numberOfCourses;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['code'] = code;
    map['name'] = name;
    map['parent'] = parent;
    map['slug'] = slug;
    map['date_added'] = dateAdded;
    map['last_modified'] = lastModified;
    map['font_awesome_class'] = fontAwesomeClass;
    map['thumbnail'] = thumbnail;
    map['order'] = order;
    map['number_of_courses'] = numberOfCourses;
    return map;
  }
}
