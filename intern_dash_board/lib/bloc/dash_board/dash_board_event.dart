// Events
import 'package:equatable/equatable.dart';

abstract class DashboardEvent extends Equatable {
  const DashboardEvent();

  @override
  List<Object> get props => [];
}

class DashboardLoadRequested extends DashboardEvent {}

class LeaderboardLoadRequested extends DashboardEvent {}

class AnnouncementsLoadRequested extends DashboardEvent {}
