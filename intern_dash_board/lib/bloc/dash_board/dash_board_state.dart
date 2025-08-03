import 'package:intern_dash_board/bloc/dash_board/dash_board_bloc.dart';
import 'package:intern_dash_board/models/user.dart';

class LeaderboardLoaded extends DashboardState {
  final List<LeaderboardEntry> entries;

  const LeaderboardLoaded({required this.entries});

  @override
  List<Object> get props => [entries];
}

class AnnouncementsLoaded extends DashboardState {
  final List<Announcement> announcements;

  const AnnouncementsLoaded({required this.announcements});

  @override
  List<Object> get props => [announcements];
}

class DashboardError extends DashboardState {
  final String message;

  const DashboardError({required this.message});

  @override
  List<Object> get props => [message];
}
