import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:islamiapp/features/hadith/hadith_model/hadith_model.dart';
import 'package:meta/meta.dart';

part 'hadith_state.dart';

class HadithCubit extends Cubit<HadithState> {
  HadithCubit() : super(HadithInitialState());

  List<HadithData> hadith = [];

  Future<void> loadDataFromAssets() async {
    emit(HadithLoadingState());
    for (int i = 1; i <= 50; i++) {
      String hadithText =
      await rootBundle.loadString("assets/files/Hadeeth/h$i.txt");
      int titleLength = hadithText.trim().indexOf("\n");
      String hadithTitle = hadithText.substring(0, titleLength);
      String hadithBody = hadithText.substring(titleLength + 1);

      HadithData hadithData = HadithData(
        hadithText: hadithBody,
        hadithTitle: hadithTitle,
      );
      hadith.add(hadithData);
    }
    emit(HadithSuccessState(hadithDate: hadith));
  }
}
