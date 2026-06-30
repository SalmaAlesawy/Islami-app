part of 'most_recent_cubit.dart';

@immutable
sealed class MostRecentState {}

final class MostRecentInitial extends MostRecentState {}
final class EmptyRecentState extends MostRecentState{}
final class GetRecentState extends MostRecentState{
  final List<SuraDataModel> mostRecent;
  GetRecentState({required this.mostRecent});
}
