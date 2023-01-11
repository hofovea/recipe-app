import 'package:recipe_app/data/dto/recipe_dto/recipe_dto.dart';

class ApiResponse {
  int? from;
  int? to;
  int? count;
  ResponseLinks? lLinks;
  List<ResponseHits>? hits;

  ApiResponse({this.from, this.to, this.count, this.lLinks, this.hits});

  ApiResponse.fromJson(Map<String, dynamic> json) {
    from = json['from'];
    to = json['to'];
    count = json['count'];
    lLinks = json['_links'] != null ? ResponseLinks.fromJson(json['_links']) : null;
    if (json['hits'] != null) {
      hits = <ResponseHits>[];
      json['hits'].forEach((v) {
        hits!.add(ResponseHits.fromJson(v));
      });
    }
  }
}

class ResponseLinks {
  ResponseNext? next;

  ResponseLinks({this.next});

  ResponseLinks.fromJson(Map<String, dynamic> json) {
    next = json['next'] != null ? ResponseNext.fromJson(json['next']) : null;
  }
}

class ResponseNext {
  String? href;
  String? title;

  ResponseNext({this.href, this.title});

  ResponseNext.fromJson(Map<String, dynamic> json) {
    href = json['href'];
    title = json['title'];
  }
}

class ResponseHits {
  RecipeDto? recipe;

  ResponseHits({this.recipe});

  ResponseHits.fromJson(Map<String, dynamic> json) {
    recipe =
    json['recipe'] != null ? RecipeDto.fromJson(json['recipe']) : null;
  }
}
