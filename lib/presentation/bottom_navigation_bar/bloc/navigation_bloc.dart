import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mental_health/presentation/bottom_navigation_bar/bloc/navigation_event.dart';
import 'package:mental_health/presentation/bottom_navigation_bar/bloc/navigation_state.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(NavigationChanged(index: 0)) {
    on<NavigationTo>((event, emit) {
      emit(NavigationChanged(index: event.index));
    });
  }
}
