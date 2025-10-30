import 'package:anilist/features/search/search.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_details_state.dart';
part 'search_details_cubit.freezed.dart';

class SearchDetailsCubit extends Cubit<SearchDetailsState> {
  SearchDetailsCubit() : super(SearchDetailsState.initial());
}
