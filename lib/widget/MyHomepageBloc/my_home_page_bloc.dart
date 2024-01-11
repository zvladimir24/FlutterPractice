import 'package:bloc/bloc.dart';
import 'package:notification/widget/MyHomepageBloc/my_home_page_event.dart';
import 'package:notification/widget/MyHomepageBloc/my_home_page_state.dart';

// BLoC
class MyHomePageBloc extends Bloc<MyHomePageEvent, MyHomePageState> {
  MyHomePageBloc() : super(InitialState()) {
    on<NotificationTapped>((event, emit) {
      emit(NotificationTappedState());
    });

    on<SearchTapped>((event, emit) {
      emit(SearchTappedState());
    });
  }
}
