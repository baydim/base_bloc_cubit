import 'package:base_bloc_cubit/app/modules/home/data/home_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeController extends Cubit<HomeData> {
  HomeController()
      : super(HomeData(
          name: "",
          isLoad: false,
        ));

  void onChangeName({required String name}) async {
    emit(state.copyWith(isLoad: true));

    await Future.delayed(const Duration(seconds: 1), () {
      emit(state.copyWith(name: name));
    });

    emit(state.copyWith(isLoad: false));
  }
}
