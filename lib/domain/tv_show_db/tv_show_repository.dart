import 'dart:io';

import 'package:explovid/api_key.dart';
import 'package:explovid/domain/models/tv_show_details/tv_show_details.dart';
import 'package:explovid/domain/models/tv_show_search/tv_show_search_results.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

const String _baseSearchTvShowUrl = "https://api.themoviedb.org/3/search/tv?api_key=$API_KEY&language=en-US&query=";
const String _baseTvShowDetailsUrl = "https://api.themoviedb.org/3/tv/";

class TvShowRepository {
  final http.Client client;

  TvShowRepository(this.client);

  Future<TvShowSearchResults> searchTvShow(String name, [int page = 1]) async {
    try {
      final response = await client.get(_buildSearchUrl(name, page));
      print(_buildSearchUrl(name, page));

      if (response.statusCode != 200) throw Exception('There was an error searching');

      return TvShowSearchResults.fromJson(
        json.decode(response.body) as Map<String, dynamic>,
        page,
      );
    } on SocketException {
      print("Tv Show Search ERROR: " + "No internet connection found / SocketException");
      return TvShowSearchResults(
        totalResults: 0,
        errorMessage: "Network issues, check your internet connection.",
        tvShowSummaries: [],
      );
    } catch (e) {
      print("Tv Show Search ERROR: " + e.toString());
      return TvShowSearchResults(
        totalResults: 0,
        errorMessage: e.toString(),
        tvShowSummaries: [],
      );
    }
  }

  String _buildSearchUrl(String name, int page) {
    String returnString = _baseSearchTvShowUrl;
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

  Future<TvShowDetails> getTvShowDetails(int id) async {
    try {
      final response = await client.get(_buildTvShowDetailsUrl(id));
      print(_buildTvShowDetailsUrl(id));

      if (response.statusCode != 200) throw Exception('There was an error getting tv show details');

      return TvShowDetails.fromJson(json.decode(response.body) as Map<String, dynamic>);
    } on SocketException {
      print("Tv Show Details ERROR: " + "No internet connection found / SocketException");
      return TvShowDetails(
        errorMessage: "Network issues, check your internet connection.",
      );
    } catch (e) {
      print("Tv Show Details ERROR: " + e.toString());
      return TvShowDetails(
        errorMessage: e.toString(),
      );
    }
  }

  String _buildTvShowDetailsUrl(int id) {
    String returnString = _baseTvShowDetailsUrl +
        id.toString() +
        "?api_key=$API_KEY" +
        "&append_to_response=aggregate_credits,recommendations,videos";
    return returnString;
  }
}
