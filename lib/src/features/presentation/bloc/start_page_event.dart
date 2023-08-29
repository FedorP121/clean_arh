part of 'start_page_bloc.dart';

sealed class StartPageEvent extends Equatable {
  const StartPageEvent();

  @override
  List<Object> get props => [];
}

class PageEvent extends StartPageEvent {}
