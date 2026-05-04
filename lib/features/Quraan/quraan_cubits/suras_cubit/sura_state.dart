part of 'sura_cubit.dart';

sealed class SuraState {}

final class SuraInitialState extends SuraState {}
final class SuccessSuraState extends SuraState{
  List<SuraDataModel> suraList = [];
  SuccessSuraState({required this.suraList});
}
