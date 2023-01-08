import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:recipe_app/core/error/exceptions.dart';
import 'package:recipe_app/data/dto/recipe_dto/recipe_dto.dart';
import 'package:recipe_app/data/dto/response_dto/response_dto.dart';

abstract class ApiDatasource {
  Future<List<RecipeDto>> getRecipes(String query);
}

class ApiDatasourceImpl implements ApiDatasource {
  final Client client;
  final String _baseUrl = 'api.edamam.com';
  final String _uri = '/api/recipes/v2';
  final Map<String, String> _appQuery = {
    'type':'public',
    'app_id': 'ea3bdb90',
    'app_key': 'e27bf8ce7f25d496d7d4f0789feb0fe3'
  };

  ApiDatasourceImpl(this.client);

  @override
  Future<List<RecipeDto>> getRecipes(String searchQuery) async {
    final Uri finalUrl = Uri.https(
      _baseUrl,
      _uri,
      {'q': searchQuery, ..._appQuery},
    );
    final Response response = await client.get(finalUrl);
    if (response.statusCode == HttpStatus.ok) {
      final responseDto = ResponseDto.fromJson(json.decode(response.body));
      if (responseDto.count != 0 && responseDto.hits != null) {
        return responseDto.hits!.map((hit) => hit.recipe!).toList();
      } else {
        return [];
      }
    } else {
      throw ServerException();
    }
  }
}
