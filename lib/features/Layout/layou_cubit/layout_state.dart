part of 'layout_cubit.dart';

@immutable
sealed class LayoutState {}

final class LayoutInitialState extends LayoutState {}
final class ScreenSuccessState extends LayoutState{}