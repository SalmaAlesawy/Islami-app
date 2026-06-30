import 'package:bloc/bloc.dart';
import 'package:islamiapp/features/Sebha/sebha_data/sebha_text.dart';

part 'sebha_state.dart';

class SebhaCubit extends Cubit<SebhaState> {
  SebhaCubit()
      : super(SebhaSuccessState(
            sebhaText: SebhaText.azkar[0], count: 0, index: 0));
  int count = 0;
  int index = 0;
  void readAzkar() {
    count++;
    if (count == 31 && index <= SebhaText.azkar.length) {
      index++;
      count = 0;
      if (index == SebhaText.azkar.length + 1) {
        index = 0;
      }
    }
    String sebhaText = SebhaText.azkar[index];
    emit(SebhaSuccessState(sebhaText: sebhaText, count: count, index: index));
  }
}
