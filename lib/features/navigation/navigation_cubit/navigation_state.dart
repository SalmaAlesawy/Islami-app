part of 'navigation_cubit.dart';

@immutable
sealed class NavigationState {}

final class NavigationInitialState extends NavigationState {}
final class NavigationSuccessState extends NavigationState{}