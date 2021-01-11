import 'package:explovid/api_key.dart';
import 'package:explovid/domain/models/movie_details/movie_details.dart';
import 'package:explovid/domain/models/movie_search/movie_search_results.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

const String _baseSearchMovieUrl = "https://api.themoviedb.org/3/search/movie?api_key=$API_KEY&language=en-US&query=";
const String _baseMovieDetailsUrl = "https://api.themoviedb.org/3/movie/";

class MovieRepository {
  final http.Client client;

  MovieRepository(this.client);

  Future<MovieSearchResults> searchMovie(String title, [int page = 1]) async {
    try {
      final response = await client.get(_buildSearchUrl(title, page));
      print(_buildSearchUrl(title, page));

      if (response.statusCode != 200) throw Exception('There was an error searching');

      return MovieSearchResults.fromJson(
        json.decode(response.body) as Map<String, dynamic>,
        page,
      );
    } catch (e) {
      print("Movie Search ERROR: " + e.toString());
      return MovieSearchResults(
        totalResults: 0,
        errorMessage: e.toString(),
        movieSummaries: [],
      );
    }
  }

  String _buildSearchUrl(String title, int page) {
    String returnString = _baseSearchMovieUrl;
    List<String> queryWords = title.split(" ");

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

  Future<MovieDetails> getMovieDetails(int id) async {
    try {
      final response = await client.get(_buildMovieDetailsUrl(id));
      print(_buildMovieDetailsUrl(id));

      if (response.statusCode != 200) throw Exception('There was an error getting movie details');

      return MovieDetails.fromJson(json.decode(response.body) as Map<String, dynamic>);
    } catch (e) {
      print("Movie Details ERROR: " + e.toString());
      return MovieDetails(
        errorMessage: e.toString(),
      );
    }
  }

  String _buildMovieDetailsUrl(int id) {
    String returnString =
        _baseMovieDetailsUrl + id.toString() + "?api_key=$API_KEY" + "&append_to_response=credits,recommendations";
    return returnString;
  }
}
