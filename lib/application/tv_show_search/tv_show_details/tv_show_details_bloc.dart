import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:explovid/domain/models/tv_show_details/tv_show_details.dart';
import 'package:explovid/domain/tv_show_db/tv_show_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'tv_show_details_event.dart';
part 'tv_show_details_state.dart';

part 'tv_show_details_bloc.freezed.dart';

class TvShowDetailsBloc extends Bloc<TvShowDetailsEvent, TvShowDetailsState> {
  final TvShowRepository _tvShowRepository;

  TvShowDetailsBloc(this._tvShowRepository) : super(TvShowDetailsState.initial());

  @override
  Stream<TvShowDetailsState> mapEventToState(
    TvShowDetailsEvent event,
  ) async* {
    yield* event.map(
      tvShowDetailsPressed: (e) async* {
        yield state.copyWith(
          isSearching: true,
          errorMessage: "",
          isTrailerAvailable: false,
        );
        var tvShowDetailsResult = await _tvShowRepository.getTvShowDetails(e.id);
        if (tvShowDetailsResult.errorMessage.isNotEmpty) {
          yield state.copyWith(
            isSearching: false,
            errorMessage: tvShowDetailsResult.errorMessage,
          );
        } else {
          yield state.copyWith(
            isSearching: false,
            errorMessage: "",
            tvShowDetails: tvShowDetailsResult,
            isTrailerAvailable: _isTrailerAvailable(tvShowDetailsResult),
          );
        }
      },
    );
  }

  bool _isTrailerAvailable(TvShowDetails tvShowDetails) {
    bool returnValue = false;
    if (tvShowDetails.videos.results.isNotEmpty) {
      for (var video in tvShowDetails.videos.results) if (video.type == "Trailer") returnValue = true;
    }
    return returnValue;
  }
}
