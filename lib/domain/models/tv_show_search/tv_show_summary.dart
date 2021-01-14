class TvShowSummary {
  final String posterPath;
  final num popularity;
  final int id;
  final String backdropPath;
  final String overview;
  final String firstAirDate;
  final List<num> genreIds;
  final String name;

  TvShowSummary({
    this.posterPath,
    this.popularity,
    this.id,
    this.backdropPath,
    this.overview,
    this.firstAirDate,
    this.genreIds,
    this.name,
  });

  factory TvShowSummary.fromJson(dynamic result) {
    return TvShowSummary(
      posterPath: result['poster_path'] as String ?? '',
      popularity: result['popularity'] as num ?? 0,
      id: result['id'] as int ?? 0,
      backdropPath: result['backdrop_path'] as String ?? '',
      overview: result['overview'] as String ?? '',
      firstAirDate: result['first_air_date'] as String ?? 'Air Date unknown',
      genreIds: result['genre_ids']?.cast<num>() ?? <num>[],
      name: result['name'] as String ?? '',
    );
  }

  Map<String, dynamic> toJson() => {
        "poster_path": posterPath,
        "popularity": popularity,
        "id": id,
        "backdrop_path": backdropPath,
        "overview": overview,
        "first_air_date": firstAirDate,
        "genre_ids": List<dynamic>.from(genreIds.map((x) => x)),
        "name": name,
      };
}
