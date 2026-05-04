import 'package:bloc/bloc.dart';
import 'package:islamiapp/Models/SuraDataModel.dart';
import 'package:meta/meta.dart';

part 'most_recent_state.dart';

class MostRecentCubit extends Cubit<MostRecentState> {
  MostRecentCubit() : super(MostRecentInitial());
  List<SuraDataModel> mostRecent = [];
  static const int maxItems = 10;

  void addRecent(SuraDataModel sura) {
    emit(EmptyRecentState());
    mostRecent.remove(sura);
    mostRecent.insert(0, sura);
    if (mostRecent.length > maxItems) {
      mostRecent.removeLast();
    }
    emit(GetRecentState(mostRecent: mostRecent));
  }
}
