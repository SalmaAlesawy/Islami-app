part of 'sura_details_cubit.dart';

sealed class SuraDetailsState {}

final class SuraDetailsInitialState extends SuraDetailsState {}
final class SuraDetailsLoadingState extends SuraDetailsState{}
final class SuraDetailsSuccessState extends SuraDetailsState{
  List<String> verses;
  SuraDetailsSuccessState({required this.verses});
}
