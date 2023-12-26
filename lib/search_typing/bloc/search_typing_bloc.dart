import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'search_typing_event.dart';
part 'search_typing_state.dart';

class SearchTypingBloc extends Bloc<SearchTypingEvent, SearchTypingState> {
  SearchTypingBloc() : super(SearchTypingInitial()) {
    on<SearchTypingEvent>();
  }
}
