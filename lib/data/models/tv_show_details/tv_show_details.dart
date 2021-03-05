import 'package:explovid/data/models/tv_show_search/tv_show_search_results.dart';

class TvShowDetails {
  TvShowDetails({
    this.backdropPath,
    this.createdBy,
    this.episodeRunTime,
    this.firstAirDate,
    this.genres,
    this.homepage,
    this.id,
    this.inProduction,
    this.lastAirDate,
    this.lastEpisodeToAir,
    this.name,
    this.networks,
    this.numberOfEpisodes,
    this.numberOfSeasons,
    this.originalName,
    this.overview,
    this.popularity,
    this.posterPath,
    this.productionCompanies,
    this.productionCountries,
    this.seasons,
    this.spokenLanguages,
    this.status,
    this.tagline,
    this.type,
    this.voteAverage,
    this.voteCount,
    //Appended responses (TvShowSearchResult is used for Recommendations property)
    this.aggregateCredits,
    this.tvShowSearchResults,
    //added errorMessage to know if successful conversion
    this.errorMessage,
    this.videos,
  });

  final String backdropPath;
  final List<CreatedBy> createdBy;
  final List<int> episodeRunTime;
  final String firstAirDate;
  final List<Genre> genres;
  final String homepage;
  final int id;
  final bool inProduction;
  final String lastAirDate;
  final LastEpisodeToAir lastEpisodeToAir;
  final String name;
  final List<ProductionCompany> networks;
  final int numberOfEpisodes;
  final int numberOfSeasons;
  final String originalName;
  final String overview;
  final num popularity;
  final String posterPath;
  //Production Company
  final List<ProductionCompany> productionCompanies;
  final List<ProductionCountry> productionCountries;
  final List<Season> seasons;
  final List<SpokenLanguage> spokenLanguages;
  final String status;
  final String tagline;
  final String type;
  final num voteAverage;
  final int voteCount;
  //Appended responses
  final AggregateCredits aggregateCredits;
  final TvShowSearchResults tvShowSearchResults;
  //Added errorMessage to check for errors
  final String errorMessage;
  //Appended video for trailers
  final TvVideos videos;

  factory TvShowDetails.fromJson(Map<String, dynamic> json) => TvShowDetails(
        backdropPath: json["backdrop_path"] as String ?? '',
        createdBy: json["created_by"] != null
            ? List<CreatedBy>.from(
                json["created_by"].map((x) => CreatedBy.fromJson(x)),
              )
            : CreatedBy(name: '', profilePath: '', id: 0, creditId: '', gender: 0),
        episodeRunTime: json["episode_run_time"] != null
            ? List<int>.from(
                json["episode_run_time"].map((x) => x),
              )
            : <int>{0}, //set runTime to 0 minutes if there is no info
        firstAirDate: json["first_air_date"] as String ?? '',
        genres: json["genres"] != null
            ? List<Genre>.from(
                json["genres"].map((x) => Genre.fromJson(x)),
              )
            : <Genre>[],
        homepage: json["homepage"] as String ?? '',
        id: json["id"] as int ?? 0,
        inProduction: json["in_production"] as bool ?? false,
        lastAirDate: json["last_air_date"] as String ?? '',
        lastEpisodeToAir: json["last_episode_to_air"] != null
            ? LastEpisodeToAir.fromJson(
                json["last_episode_to_air"],
              )
            : LastEpisodeToAir(
                airDate: "",
              ),
        name: json["name"] as String ?? '',
        networks: json["networks"] != null
            ? List<ProductionCompany>.from(
                json["networks"].map((x) => ProductionCompany.fromJson(x)),
              )
            : <ProductionCompany>[],
        numberOfEpisodes: json["number_of_episodes"] as int ?? 0,
        numberOfSeasons: json["number_of_seasons"] as int ?? 0,
        originalName: json["original_name"] as String ?? '',
        overview: json["overview"] as String ?? '',
        popularity: json["popularity"] as num ?? 0.0,
        posterPath: json["poster_path"] as String ?? '',
        productionCompanies: json["production_companies"] != null
            ? List<ProductionCompany>.from(json["production_companies"].map((x) => ProductionCompany.fromJson(x)))
            : <ProductionCompany>[],
        productionCountries: json["production_countries"] != null
            ? List<ProductionCountry>.from(json["production_countries"].map((x) => ProductionCountry.fromJson(x)))
            : <ProductionCountry>[],
        seasons: json["seasons"] != null
            ? List<Season>.from(
                json["seasons"].map((x) => Season.fromJson(x)),
              )
            : <Season>[],
        spokenLanguages: json["spoken_languages"] != null
            ? List<SpokenLanguage>.from(json["spoken_languages"].map((x) => SpokenLanguage.fromJson(x)))
            : <SpokenLanguage>[],
        status: json["status"] as String ?? '',
        tagline: json["tagline"] as String ?? '',
        type: json["type"] as String ?? '',
        voteAverage: json["vote_average"] as num ?? 0.0,
        voteCount: json["vote_count"] as int ?? 0,
        aggregateCredits: json["aggregate_credits"] != null
            ? AggregateCredits.fromJson(
                json["aggregate_credits"],
              )
            : AggregateCredits(cast: <Cast>[], crew: <Cast>[]),
        tvShowSearchResults: json["recommendations"] != null
            ? TvShowSearchResults.fromJson(json["recommendations"], 1)
            : TvShowSearchResults(totalResults: 0, page: 1, tvShowSummaries: [], errorMessage: "No results found."),
        videos: json["videos"] != null
            ? TvVideos.fromJson(
                json["videos"],
              )
            : TvVideos(results: <VideosResult>[]),
        errorMessage: "",
      );

  Map<String, dynamic> toJson() => {
        "backdrop_path": backdropPath,
        "created_by": List<dynamic>.from(createdBy.map((x) => x.toJson())),
        "episode_run_time": List<dynamic>.from(episodeRunTime.map((x) => x)),
        "first_air_date": firstAirDate,
        "genres": List<dynamic>.from(genres.map((x) => x.toJson())),
        "homepage": homepage,
        "id": id,
        "in_production": inProduction,
        "last_air_date": lastAirDate,
        "last_episode_to_air": lastEpisodeToAir.toJson(),
        "name": name,
        "networks": List<dynamic>.from(networks.map((x) => x.toJson())),
        "number_of_episodes": numberOfEpisodes,
        "number_of_seasons": numberOfSeasons,
        "original_name": originalName,
        "overview": overview,
        "popularity": popularity,
        "poster_path": posterPath,
        "production_companies": List<dynamic>.from(productionCompanies.map((x) => x.toJson())),
        "production_countries": List<dynamic>.from(productionCountries.map((x) => x.toJson())),
        "seasons": List<dynamic>.from(seasons.map((x) => x.toJson())),
        "spoken_languages": List<dynamic>.from(spokenLanguages.map((x) => x.toJson())),
        "status": status,
        "tagline": tagline,
        "type": type,
        "vote_average": voteAverage,
        "vote_count": voteCount,
        "aggregate_credits": aggregateCredits.toJson(),
        "tvShowSearchResults": tvShowSearchResults.toJson(),
        "videos": videos.toJson(),
      };
}

class CreatedBy {
  CreatedBy({
    this.id,
    this.creditId,
    this.name,
    this.gender,
    this.profilePath,
  });

  final int id;
  final String creditId;
  final String name;
  final int gender;
  final String profilePath;

  factory CreatedBy.fromJson(Map<String, dynamic> json) => CreatedBy(
        id: json["id"] as int ?? 0,
        creditId: json["credit_id"] as String ?? '',
        name: json["name"] as String ?? '',
        gender: json["gender"] as int ?? 0,
        profilePath: json["profile_path"] as String ?? '',
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "credit_id": creditId,
        "name": name,
        "gender": gender,
        "profile_path": profilePath,
      };
}

class AggregateCredits {
  AggregateCredits({
    this.cast,
    this.crew,
  });

  final List<Cast> cast;
  final List<Cast> crew;

  factory AggregateCredits.fromJson(Map<String, dynamic> json) => AggregateCredits(
        cast: List<Cast>.from(json["cast"].map((x) => Cast.fromJson(x))) ?? <Cast>[],
        crew: List<Cast>.from(json["crew"].map((x) => Cast.fromJson(x))) ?? <Cast>[],
      );

  Map<String, dynamic> toJson() => {
        "cast": List<dynamic>.from(cast.map((x) => x.toJson())),
        "crew": List<dynamic>.from(crew.map((x) => x.toJson())),
      };
}

class Cast {
  Cast({
    this.adult,
    this.gender,
    this.id,
    this.knownForDepartment,
    this.name,
    this.originalName,
    this.popularity,
    this.profilePath,
    this.order,
    this.department,
    this.roles,
    this.jobs,
  });

  final bool adult;
  final int gender;
  final int id;
  final String knownForDepartment;
  final String name;
  final String originalName;
  final num popularity;
  final String profilePath;
  final int order;
  final String department;
  final List<Role> roles;
  final List<Job> jobs;

  factory Cast.fromJson(Map<String, dynamic> json) => Cast(
        adult: json["adult"] as bool ?? false,
        gender: json["gender"] as int ?? 0,
        id: json["id"] as int ?? 0,
        knownForDepartment: json["known_for_department"] as String ?? '',
        name: json["name"] as String ?? '',
        originalName: json["original_name"] as String ?? '',
        popularity: json["popularity"] as num ?? 0.0,
        profilePath: json["profile_path"] as String ?? '',
        order: json["order"] as int ?? 0,
        department: json["department"] as String ?? '',
        roles: json["roles"] != null
            ? List<Role>.from(
                json["roles"].map((x) => Role.fromJson(x)),
              )
            : <Role>[],
        jobs: json["jobs"] != null
            ? List<Job>.from(
                json["jobs"].map((x) => Job.fromJson(x)),
              )
            : <Job>[],
      );

  Map<String, dynamic> toJson() => {
        "adult": adult,
        "gender": gender,
        "id": id,
        "known_for_department": knownForDepartment,
        "name": name,
        "original_name": originalName,
        "popularity": popularity,
        "profile_path": profilePath,
        "order": order,
        "department": department,
        "roles": List<dynamic>.from(roles.map((x) => x.toJson())),
        "jobs": List<dynamic>.from(jobs.map((x) => x.toJson())),
      };
}

class Role {
  final String creditId;
  final String character;
  final int episodeCount;

  Role({
    this.creditId,
    this.character,
    this.episodeCount,
  });

  factory Role.fromJson(Map<String, dynamic> json) => Role(
        creditId: json["credit_id"] as String ?? '',
        character: json["character"] as String ?? '',
        episodeCount: json["episode_count"] as int ?? 0,
      );

  Map<String, dynamic> toJson() => {
        "credit_id": creditId,
        "character": character,
        "episode_count": episodeCount,
      };
}

class Job {
  final String creditId;
  final String job;
  final int episodeCount;

  Job({
    this.creditId,
    this.job,
    this.episodeCount,
  });

  factory Job.fromJson(Map<String, dynamic> json) => Job(
        creditId: json["credit_id"] as String ?? '',
        job: json["job"] as String ?? '',
        episodeCount: json["episode_count"] as int ?? 0,
      );

  Map<String, dynamic> toJson() => {
        "credit_id": creditId,
        "job": job,
        "episode_count": episodeCount,
      };
}

class Genre {
  Genre({
    this.id,
    this.name,
  });

  final int id;
  final String name;

  factory Genre.fromJson(Map<String, dynamic> json) => Genre(
        id: json["id"] as int ?? 0,
        name: json["name"] as String ?? '',
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}

class LastEpisodeToAir {
  LastEpisodeToAir({
    this.airDate,
    this.episodeNumber,
    this.id,
    this.name,
    this.overview,
    this.productionCode,
    this.seasonNumber,
    this.stillPath,
    this.voteAverage,
    this.voteCount,
  });

  final String airDate;
  final int episodeNumber;
  final int id;
  final String name;
  final String overview;
  final String productionCode;
  final int seasonNumber;
  final String stillPath;
  final num voteAverage;
  final int voteCount;

  factory LastEpisodeToAir.fromJson(Map<String, dynamic> json) => LastEpisodeToAir(
        airDate: json["air_date"] as String ?? '',
        episodeNumber: json["episode_number"] as int ?? 0,
        id: json["id"] as int ?? 0,
        name: json["name"] as String ?? '',
        overview: json["overview"] as String ?? '',
        productionCode: json["production_code"] as String ?? '',
        seasonNumber: json["season_number"] as int ?? 0,
        stillPath: json["still_path"] as String ?? '',
        voteAverage: json["vote_average"] as num ?? 0.0,
        voteCount: json["vote_count"] as int ?? 0,
      );

  Map<String, dynamic> toJson() => {
        "air_date": airDate,
        "episode_number": episodeNumber,
        "id": id,
        "name": name,
        "overview": overview,
        "production_code": productionCode,
        "season_number": seasonNumber,
        "still_path": stillPath,
        "vote_average": voteAverage,
        "vote_count": voteCount,
      };
}

class ProductionCompany {
  ProductionCompany({
    this.id,
    this.logoPath,
    this.name,
    this.originCountry,
  });

  final int id;
  final String logoPath;
  final String name;
  final String originCountry;

  factory ProductionCompany.fromJson(Map<String, dynamic> json) => ProductionCompany(
        id: json["id"] as int ?? 0,
        logoPath: json["logo_path"] as String ?? '',
        name: json["name"] as String ?? '',
        originCountry: json["origin_country"] as String ?? '',
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "logo_path": logoPath == null ? null : logoPath,
        "name": name,
        "origin_country": originCountry,
      };
}

class ProductionCountry {
  ProductionCountry({
    this.iso31661,
    this.name,
  });

  final String iso31661;
  final String name;

  factory ProductionCountry.fromJson(Map<String, dynamic> json) => ProductionCountry(
        iso31661: json["iso_3166_1"] as String ?? '',
        name: json["name"] as String ?? '',
      );

  Map<String, dynamic> toJson() => {
        "iso_3166_1": iso31661,
        "name": name,
      };
}

class Season {
  Season({
    this.airDate,
    this.episodeCount,
    this.id,
    this.name,
    this.overview,
    this.posterPath,
    this.seasonNumber,
  });

  final String airDate;
  final int episodeCount;
  final int id;
  final String name;
  final String overview;
  final String posterPath;
  final int seasonNumber;

  factory Season.fromJson(Map<String, dynamic> json) => Season(
        airDate: json["air_date"] as String ?? '',
        episodeCount: json["episode_count"] as int ?? 0,
        id: json["id"] as int ?? 0,
        name: json["name"] as String ?? '',
        overview: json["overview"] as String ?? '',
        posterPath: json["poster_path"] as String ?? '',
        seasonNumber: json["season_number"] as int ?? 0,
      );

  Map<String, dynamic> toJson() => {
        "air_date": airDate,
        "episode_count": episodeCount,
        "id": id,
        "name": name,
        "overview": overview,
        "poster_path": posterPath,
        "season_number": seasonNumber,
      };
}

class SpokenLanguage {
  SpokenLanguage({
    this.englishName,
    this.name,
  });

  final String englishName;
  final String name;

  factory SpokenLanguage.fromJson(Map<String, dynamic> json) => SpokenLanguage(
        englishName: json["english_name"] as String ?? '',
        name: json["name"] as String ?? '',
      );

  Map<String, dynamic> toJson() => {
        "english_name": englishName,
        "name": name,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}

class TvVideos {
  TvVideos({
    this.results,
  });

  final List<VideosResult> results;

  factory TvVideos.fromJson(Map<String, dynamic> json) => TvVideos(
        results: List<VideosResult>.from(json["results"].map((x) => VideosResult.fromJson(x))) ?? <VideosResult>[],
      );

  Map<String, dynamic> toJson() => {
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
      };
}

class VideosResult {
  VideosResult({
    this.id,
    this.iso6391,
    this.iso31661,
    this.key,
    this.name,
    this.site,
    this.size,
    this.type,
  });

  final String id;
  final String iso6391;
  final String iso31661;
  final String key;
  final String name;
  final String site;
  final int size;
  final String type;

  factory VideosResult.fromJson(Map<String, dynamic> json) => VideosResult(
        id: json["id"] as String ?? '',
        iso6391: json["iso_639_1"] as String ?? '',
        iso31661: json["iso_3166_1"] as String ?? '',
        key: json["key"] as String ?? '',
        name: json["name"] as String ?? '',
        site: json["site"] as String ?? '',
        size: json["size"] as int ?? 0,
        type: json["type"] as String ?? '',
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "iso_639_1": iso6391,
        "iso_3166_1": iso31661,
        "key": key,
        "name": name,
        "site": site,
        "size": size,
        "type": type,
      };
}
