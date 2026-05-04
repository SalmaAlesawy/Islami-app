import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islamiapp/features/Quraan/quraan_data/sura_data.dart';
import '../../../../Models/SuraDataModel.dart';
part 'sura_state.dart';

class SuraCubit extends Cubit<SuraState> {
  SuraCubit() : super(SuraInitialState());

  List<SuraDataModel> suraList = [];
  void getSuraList() {
    suraList = List.generate(SuraData.arabicQuranSuraList.length, (index) {
      return SuraDataModel(
          arabicSuraName: SuraData.arabicQuranSuraList[index],
          englishSuraName: SuraData.englishQuranSuraList[index],
          suraNumber: "${index + 1}",
          ayaNumber: SuraData.ayaNumberList[index]);
    });
    emit(SuccessSuraState(suraList: suraList));
  }
}
