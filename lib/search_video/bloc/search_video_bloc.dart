import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'search_video_event.dart';
part 'search_video_state.dart';

class SearchVideoBloc extends Bloc<SearchVideoEvent, SearchVideoState> {
  SearchVideoBloc() : super(SearchVideoInitial()) {
    on<SearchVideoEvent>();
  }
}
