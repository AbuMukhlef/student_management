part of 'manag_stu_cubit.dart';

@immutable
sealed class ManagStuState {}

final class ManagStuInitial extends ManagStuState {}

final class LoadingState extends ManagStuState {}

final class UpdateState extends ManagStuState {}
