part of 'schedule_now_bloc.dart';

@immutable
sealed class ScheduleNowEvent extends Equatable {
  const ScheduleNowEvent();

  @override
  List<Object?> get props => [];
}

final class LoadScheduleNow extends ScheduleNowEvent {}
