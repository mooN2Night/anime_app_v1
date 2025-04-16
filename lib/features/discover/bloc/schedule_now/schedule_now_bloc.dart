import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:new_anime_app/utils/mapper/mapper.dart';

import '../../../../repositories/discover/discover.dart';

part 'schedule_now_event.dart';

part 'schedule_now_state.dart';

class ScheduleNowBloc extends Bloc<ScheduleNowEvent, ScheduleNowState> {
  ScheduleNowBloc({required DiscoverRepositoryI discoverRepository})
      : _discoverRepository = discoverRepository,
        super(ScheduleNowInitial()) {
    on<LoadScheduleNow>(_loadScheduleNow);
  }

  final DiscoverRepositoryI _discoverRepository;

  Future<void> _loadScheduleNow(
    LoadScheduleNow event,
    Emitter<ScheduleNowState> emit,
  ) async {
    try {
      emit(ScheduleNowLoading());
      final scheduleDto = await _discoverRepository.fetchNowSchedule();
      final schedule = ScheduleMapper.fromScheduleNowDto(scheduleDto);
      emit(
        ScheduleNowLoaded(
          today: schedule.today,
          yesterday: schedule.yesterday,
          tomorrow: schedule.tomorrow,
        ),
      );
    } catch (e) {
      emit(ScheduleNowFailure(error: e));
    }
  }
}
