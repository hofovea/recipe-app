import 'package:recipe_app/data/dto/recipe_dto/recipe_dto.dart';

class ResponseDto {
  int? from;
  int? to;
  int? count;
  Links? lLinks;
  List<Hits>? hits;

  ResponseDto({this.from, this.to, this.count, this.lLinks, this.hits});

  ResponseDto.fromJson(Map<String, dynamic> json) {
    from = json['from'];
    to = json['to'];
    count = json['count'];
    lLinks = json['_links'] != null ? Links.fromJson(json['_links']) : null;
    if (json['hits'] != null) {
      hits = <Hits>[];
      json['hits'].forEach((v) {
        hits!.add(Hits.fromJson(v));
      });
    }
  }
}

class Links {
  Next? next;

  Links({this.next});

  Links.fromJson(Map<String, dynamic> json) {
    next = json['next'] != null ? Next.fromJson(json['next']) : null;
  }
}

class Next {
  String? href;
  String? title;

  Next({this.href, this.title});

  Next.fromJson(Map<String, dynamic> json) {
    href = json['href'];
    title = json['title'];
  }
}

class Hits {
  RecipeDto? recipe;

  Hits({this.recipe});

  Hits.fromJson(Map<String, dynamic> json) {
    recipe =
    json['recipe'] != null ? RecipeDto.fromJson(json['recipe']) : null;
  }
}
