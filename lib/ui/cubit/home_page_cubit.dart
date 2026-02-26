import 'package:flutter_bloc/flutter_bloc.dart';

class HomePageCubit extends Cubit<int> {
  HomePageCubit() : super(0);

  void addUp(String fetchNum1, String fetchNum2) {
    int number1 = int.parse(fetchNum1);
    int number2 = int.parse(fetchNum2);
    int sum = number1 + number2;
    emit(sum); //*Tetikleyici ve veri gönderme.
  }

  void addmultiplicationUpUp(String fetchNum1, String fetchNum2) {
    int number1 = int.parse(fetchNum1);
    int number2 = int.parse(fetchNum2);
    int sum = number1 * number2;
    emit(sum); //*Tetikleyici ve veri gönderme.
  }
}
