import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:new_anime_app/utils/utils.dart';

import '../../../repositories/discover/discover.dart';

class ReleaseSchedule extends StatefulWidget {
  const ReleaseSchedule({
    super.key,
    required this.today,
    required this.tomorrow,
    required this.yesterday,
  });

  final List<Schedule> today;
  final List<Schedule> tomorrow;
  final List<Schedule> yesterday;

  @override
  State<ReleaseSchedule> createState() => _ReleaseScheduleState();
}

class _ReleaseScheduleState extends State<ReleaseSchedule> {
  ScheduleDay _selectedDay = ScheduleDay.today;

  late final List<Schedule> today;
  late final List<Schedule> tomorrow;
  late final List<Schedule> yesterday;

  @override
  void initState() {
    today = widget.today;
    tomorrow = widget.tomorrow;
    yesterday = widget.yesterday;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Расписание релизов', style: theme.textTheme.headlineMedium),
              const Icon(IconlyLight.arrowRight2),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _dateButton(theme, 'Вчера', ScheduleDay.yesterday),
              _dateButton(theme, 'Сегодня', ScheduleDay.today),
              _dateButton(theme, 'Завтра', ScheduleDay.tomorrow),
            ],
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 200,
          child: Builder(builder: (context) {
            switch (_selectedDay) {
              case ScheduleDay.yesterday:
                return _scheduleList(theme, ScheduleDay.yesterday);
              case ScheduleDay.today:
                return _scheduleList(theme, ScheduleDay.today);
              case ScheduleDay.tomorrow:
                return _scheduleList(theme, ScheduleDay.tomorrow);
            }
          }),
        ),
        const SizedBox(height: 16),
      ],
    );
  }

  ListView _scheduleList(ThemeData theme, ScheduleDay day) {
    final animeList = _getCurrentList();
    return ListView.builder(
      key: PageStorageKey(day),
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemCount: animeList.length,
      itemBuilder: (context, index) {
        final currentDay = animeList[index];
        final anime = currentDay.anime;
        final genresName = anime.genres?.map((genre) => genre.name).join(', ');

        return Container(
          margin: EdgeInsets.only(
            right: index == animeList.length - 1 ? 0 : 8,
          ),
          width: 300,
          child: Stack(
            children: [
              Positioned.fill(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    currentDay.anime.poster.optimized.fullSrc,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black.withValues(alpha: 0.8),
                        Colors.black.withValues(alpha: 0.8),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 20,
                left: 20,
                child: Text(
                  anime.name.main,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              currentDay.isSeasonReleased == false
                  ? Positioned(
                      top: 55,
                      left: 20,
                      child: Text(
                        'Эпизод ${currentDay.nextReleaseEpisodeNumber}',
                        style: theme.textTheme.labelLarge,
                      ),
                    )
                  : Positioned(
                      top: 55,
                      left: 20,
                      child: Container(
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          color: const Color(0xFF616161),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(
                          'Полный сезон',
                          style: theme.textTheme.labelLarge,
                        ),
                      ),
                    ),
              Positioned(
                top: 100,
                left: 20,
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 260),
                  child: Row(
                    children: [
                      Text(
                        anime.year.toString(),
                        style: theme.textTheme.labelSmall,
                      ),
                      _dotIcon(),
                      Text(
                        anime.season.description.toString(),
                        style: theme.textTheme.labelSmall,
                      ),
                      _dotIcon(),
                      Text(
                        anime.type.description,
                        style: theme.textTheme.labelSmall,
                      ),
                      _dotIcon(),
                      Text(
                        anime.ageRating.label,
                        style: theme.textTheme.labelSmall,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 120,
                left: 20,
                right: 20,
                child: Expanded(
                  child: Text(
                    genresName ?? '',
                    style: theme.textTheme.labelSmall,
                    softWrap: true,
                    overflow: TextOverflow.visible,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _dotIcon() {
    return const Row(
      children: [
        SizedBox(width: 5),
        Icon(
          Icons.add_circle,
          color: Colors.white54,
          size: 5,
        ),
        SizedBox(width: 5),
      ],
    );
  }

  Expanded _dateButton(ThemeData theme, String label, ScheduleDay day) {
    final isSelected = _selectedDay == day;
    final color = isSelected ? Colors.black : Colors.grey.shade200;
    final textColor = isSelected ? Colors.white : Colors.black;

    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            _selectedDay = day;
          });
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          margin: const EdgeInsets.symmetric(horizontal: 4),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.grey.shade400),
          ),
          child: Center(
            child: Text(
              label,
              style: theme.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w600,
                color: textColor,
              ),
            ),
          ),
        ),
      ),
    );
  }

  List<Schedule> _getCurrentList() {
    switch (_selectedDay) {
      case ScheduleDay.yesterday:
        return yesterday;
      case ScheduleDay.today:
        return today;
      case ScheduleDay.tomorrow:
        return tomorrow;
    }
  }
}
