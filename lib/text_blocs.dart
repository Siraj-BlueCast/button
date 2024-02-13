import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_buttons/text_event.dart';
import 'package:flutter_buttons/text_state.dart';

class AppBloc extends Bloc<AppBlocEvent, InitialState> {
  AppBloc() : super(InitialState.empty()
          ){
    on<ChangeTextEvent1>((event, emit) => emit(InitialState(text: 'button one')));

    on<ChangeTextEvent2>((event, emit) => emit(InitialState(text: 'button two')));

    on<ChangeTextEvent3>((event, emit) => emit(InitialState(text: 'button three')));

  }
  
}