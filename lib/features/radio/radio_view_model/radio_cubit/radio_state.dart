part of 'radio_cubit.dart';

@immutable
sealed class RadioState {}

final class RadioInitial extends RadioState {}
final class RadioLoading extends RadioState{}
final class GetRadioSuccess extends RadioState{
  final List<Radios> radioData;
  GetRadioSuccess({required this.radioData});
}
final class GetRadioError extends RadioState{
 final String errorMessage;
  GetRadioError({required this.errorMessage});
}
