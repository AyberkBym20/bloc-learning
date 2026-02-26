import 'package:bloc_learning/data/repo/math_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePageCubit extends Cubit<int> {
  HomePageCubit() : super(0);

  var mrepo = MathRepo();
  void addUp(String fetchNum1, String fetchNum2) {
    emit(mrepo.addUp(fetchNum1, fetchNum2));
  }

  void addmultiplicationUpUp(String fetchNum1, String fetchNum2) {
    emit(mrepo.addmultiplicationUpUp(fetchNum1, fetchNum2));
  }
}
