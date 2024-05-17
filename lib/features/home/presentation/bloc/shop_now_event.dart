part of 'shop_now_bloc.dart';

@immutable
sealed class HomePageEvent {}

class OnClickedShopNowEvent extends HomePageEvent {}

class HomeClickedEvent extends HomePageEvent {}

class SearchClickedEvent extends HomePageEvent {}

