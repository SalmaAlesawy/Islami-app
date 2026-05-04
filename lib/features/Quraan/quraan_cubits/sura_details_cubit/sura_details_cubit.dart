import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'sura_details_state.dart';

class SuraDetailsCubit extends Cubit<SuraDetailsState> {
  SuraDetailsCubit() : super(SuraDetailsInitialState());


  Future<void> loadDataFromAssets(String suraNumber) async {
    List<String>verses;
    emit(SuraDetailsLoadingState());
    String quraanText= await rootBundle.loadString("assets/files/quraan/$suraNumber.txt");
   verses= quraanText.split("\n");
    emit(SuraDetailsSuccessState(verses: verses));
  }
}
