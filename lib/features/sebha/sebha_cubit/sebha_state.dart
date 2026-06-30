part of 'sebha_cubit.dart';

sealed class SebhaState {}
final class SebhaSuccessState extends SebhaState {
  int index;
  int count;
  String sebhaText;
  SebhaSuccessState({
    required this.sebhaText,
    required this.count,
    required this.index,
  });
}
