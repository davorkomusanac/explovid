import 'package:explovid/data/models/actor_search/actor_summary.dart';

class ActorSearchResults {
  final int page;
  final int totalResults;
  final int totalPages;
  final List<ActorSummary> actorSummaries;
  final String errorMessage;

  ActorSearchResults({
    this.page,
    this.totalResults,
    this.totalPages,
    this.actorSummaries,
    this.errorMessage,
  });

  factory ActorSearchResults.fromJson(Map<String, dynamic> json, int page) {
    if ((json['total_results'] ??= 0) == 0) {
      return ActorSearchResults(
        totalResults: 0,
        page: page,
        actorSummaries: [],
        errorMessage: "No results found.",
      );
    }

    final List<ActorSummary> actorSummaries = [];

    for (final result in json['results']) {
      actorSummaries.add(
        ActorSummary(
          profilePath: result['profile_path'] as String ?? '',
          adult: result['adult'] as bool ?? false,
          id: result['id'] as int ?? 0,
          name: result['name'] as String ?? '',
          popularity: result['popularity'] as num ?? 0,
          knownForDepartment: result['known_for_department'] as String ?? '',
          gender: result['gender'] as int ?? 0,
          //movieSummaries: movies,
          //tvShowSummaries: tvShows,
        ),
      );
    }

    return ActorSearchResults(
      page: page,
      totalResults: json['total_results'] as int ?? 0,
      totalPages: json['total_pages'] as int ?? 0,
      actorSummaries: actorSummaries,
      errorMessage: "",
    );
  }
}
