import 'package:explovid/api_key.dart';
import 'package:explovid/domain/models/actor_details/actor_details.dart';
import 'package:explovid/domain/models/actor_search/actor_search_result.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

const String _baseSearchActorUrl = "https://api.themoviedb.org/3/search/person?api_key=$API_KEY&language=en-US&query=";
const String _baseActorDetailsUrl = "https://api.themoviedb.org/3/person/";

class ActorRepository {
  final http.Client client;

  ActorRepository(this.client);

  Future<ActorSearchResults> searchActor(String name, [int page = 1]) async {
    try {
      final response = await client.get(_buildSearchUrl(name, page));
      print(_buildSearchUrl(name, page));

      if (response.statusCode != 200) throw Exception('There was an error searching');

      return ActorSearchResults.fromJson(
        json.decode(response.body) as Map<String, dynamic>,
        page,
      );
    } catch (e) {
      print("Actor Search ERROR: " + e.toString());
      return ActorSearchResults(
        totalResults: 0,
        errorMessage: e.toString(),
        actorSummaries: [],
      );
    }
  }

  String _buildSearchUrl(String name, int page) {
    String returnString = _baseSearchActorUrl;
    List<String> queryWords = name.split(" ");

    for (int i = 0; i < queryWords.length; i++) {
      if (i != queryWords.length - 1) {
        returnString += queryWords[i] + "%20";
      } else {
        returnString += queryWords[i];
      }
    }

    if (page != 1) {
      returnString += "&page=$page&include_adult=false";
    } else {
      returnString += "&page=1&include_adult=false";
    }

    return returnString;
  }

  Future<ActorDetails> getActorDetails(int id) async {
    try {
      final response = await client.get(_buildActorDetailsUrl(id));
      print(_buildActorDetailsUrl(id));

      if (response.statusCode != 200) throw Exception('There was an error searching');

      return ActorDetails.fromJson(json.decode(response.body) as Map<String, dynamic>);
    } catch (e) {
      print("Actor Details ERROR: " + e.toString());
      return ActorDetails(
        errorMessage: e.toString(),
      );
    }
  }

  String _buildActorDetailsUrl(int id) {
    String returnString =
        _baseActorDetailsUrl + id.toString() + "?api_key=$API_KEY" + "&append_to_response=movie_credits,tv_credits";
    return returnString;
  }
}
