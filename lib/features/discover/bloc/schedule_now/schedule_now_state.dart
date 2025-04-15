part of 'schedule_now_bloc.dart';

@immutable
sealed class ScheduleNowState extends Equatable {
  const ScheduleNowState();

  @override
  List<Object?> get props => [];
}

final class ScheduleNowInitial extends ScheduleNowState {}

final class ScheduleNowLoading extends ScheduleNowState {}

final class ScheduleNowLoaded extends ScheduleNowState {
  const ScheduleNowLoaded({
    required this.today,
    required this.yesterday,
    required this.tomorrow,
  });

  final List<Schedule> today;
  final List<Schedule> yesterday;
  final List<Schedule> tomorrow;

  @override
  List<Object?> get props => super.props..addAll([today, yesterday, tomorrow]);
}

final class ScheduleNowFailure extends ScheduleNowState {
  const ScheduleNowFailure({required this.error});

  final Object error;

  @override
  List<Object?> get props => super.props..add(error);
}
