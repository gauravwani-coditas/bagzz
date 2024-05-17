import 'dart:async';
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'shop_now_event.dart';
part 'shop_now_state.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  HomePageBloc() : super(OnClickedShopNowState()) {
    on<OnClickedShopNowEvent>(onClickedShopNowEvent);
    on<HomeClickedEvent>(homeClickedEvent);
    on<SearchClickedEvent>(searchClickedEvent);

  }

  FutureOr<void> onClickedShopNowEvent(
      OnClickedShopNowEvent event, Emitter<HomePageState> emit) {
          log("Shop Now clicked");
    emit(OnClickedShopNowState());
  }

  FutureOr<void> homeClickedEvent(
      HomeClickedEvent event, Emitter<HomePageState> emit) {
        log("Home Clicked Event");
    emit(HomeClickedState());
  }

  FutureOr<void> searchClickedEvent(
      SearchClickedEvent event, Emitter<HomePageState> emit) {
        log("Search Clicked Event");
    emit(SearchClickedState());
  }

}
