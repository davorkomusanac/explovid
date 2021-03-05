class ActorSummary {
  final String profilePath;
  final bool adult;
  final int id;
  //in the API movies and tvShow are in one object list, known_for: oneOf
  //separated them here for easier use
  //Currently not using them since there is no use, if needed, will use them later
  // final List<MovieSummary> movieSummaries;
  // final List<TvShowSummary> tvShowSummaries;
  final String name;
  final num popularity;
  final String knownForDepartment;
  final int gender;

  ActorSummary({
    this.profilePath,
    this.adult,
    this.id,
    // this.movieSummaries,
    // this.tvShowSummaries,
    this.name,
    this.popularity,
    this.knownForDepartment,
    this.gender,
  });
}
