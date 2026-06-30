part of 'hadith_cubit.dart';

@immutable
sealed class HadithState {}

final class HadithInitialState extends HadithState {}
final class HadithLoadingState extends HadithState{}
final class HadithSuccessState extends HadithState{
  List<HadithData> hadithDate=[];
  HadithSuccessState({required this.hadithDate});
}

