abstract class AppState {
  AppState();
}

class InitialState extends AppState {
  final String text;
  InitialState.empty():text='Initial Text';

  InitialState({required this.text});               
  
}
