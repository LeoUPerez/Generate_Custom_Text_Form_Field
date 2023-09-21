import 'package:bloc/bloc.dart';
import 'package:custom_text_form_field/bloc/global_event.dart';
import 'package:custom_text_form_field/bloc/global_state.dart';


class GlobalBloc extends Bloc<GlobalEvent, GlobalState> {
  GlobalBloc() : super(const GlobalState()) {
    on<GlobalEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}

