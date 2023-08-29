// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:clean_arh/src/core/use_case/use_case.dart';
import 'package:clean_arh/src/features/domain/use_case/use_case.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'start_page_event.dart';
part 'start_page_state.dart';

@injectable
class StartPageBloc extends Bloc<StartPageEvent, StartPageState> {
  final GetUser getUser;
  StartPageBloc(
    this.getUser,
  ) : super(StartPageInitial()) {
    on<PageEvent>((event, emit) {
      final a = getUser.call(NoParams());
      print(a);
    });
  }
}
