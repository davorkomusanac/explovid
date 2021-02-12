import 'package:explovid/domain/models/tv_show_search/tv_show_summary.dart';

class TvShowSearchResults {
  final int page;
  final int totalResults;
  final int totalPages;
  final List<TvShowSummary> tvShowSummaries;
  final String errorMessage;

  TvShowSearchResults({
    this.page,
    this.totalResults,
    this.totalPages,
    this.tvShowSummaries,
    this.errorMessage,
  });

  factory TvShowSearchResults.fromJson(Map<String, dynamic> json, int page) {
    if ((json['total_results'] ??= 0) == 0) {
      return TvShowSearchResults(
        totalResults: 0,
        page: page,
        tvShowSummaries: [],
        errorMessage: "No results found.",
      );
    }

    final List<TvShowSummary> tvShows = [];

    for (final result in json['results']) {
      tvShows.add(TvShowSummary.fromJson(result));
    }

    return TvShowSearchResults(
      page: page,
      totalResults: json['total_results'] as int ?? 0,
      totalPages: json['total_pages'] as int ?? 0,
      tvShowSummaries: tvShows,
      errorMessage: "",
    );
  }

  Map<String, dynamic> toJson() => {
        "page": page,
        "results": List<dynamic>.from(tvShowSummaries.map((x) => x.toJson())),
        "total_pages": totalPages,
        "total_results": totalResults,
      };
}
