import 'package:bloc/bloc.dart';
import 'package:islamiapp/features/radio/radio_models/radio_model.dart';
import 'package:islamiapp/features/radio/radio_repository/radio_repo.dart';
import 'package:meta/meta.dart';

part 'radio_state.dart';

class RadioCubit extends Cubit<RadioState> {
  RadioCubit(this.radioRepo) : super(RadioInitial());
  RadioRepo radioRepo;

  Future<void> getRadio() async {
    try {
      emit(RadioLoading());
      final response = await radioRepo.getRadios();
      response.fold((error) {
        emit(GetRadioError(errorMessage: error));
      }, (radios) {
        emit(GetRadioSuccess(radioData: radios));
      });
    } catch (e) {
      print("error cubit: ${e.toString()}");
      emit(GetRadioError(errorMessage: e.toString()));
    }
  }
}
