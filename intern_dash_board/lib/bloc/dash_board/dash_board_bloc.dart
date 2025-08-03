// Bloc
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intern_dash_board/bloc/dash_board/dash_board_event.dart';
import 'package:intern_dash_board/bloc/dash_board/dash_board_state.dart';
import 'package:intern_dash_board/data/mock_data.dart';
import 'package:intern_dash_board/models/user.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  DashboardBloc() : super(DashboardInitial()) {
    on<DashboardLoadRequested>(_onDashboardLoadRequested);
    on<LeaderboardLoadRequested>(_onLeaderboardLoadRequested);
    on<AnnouncementsLoadRequested>(_onAnnouncementsLoadRequested);
  }

  Future<void> _onDashboardLoadRequested(
    DashboardLoadRequested event,
    Emitter<DashboardState> emit,
  ) async {
    emit(DashboardLoading());

    // Simulate API call delay
    await Future.delayed(const Duration(milliseconds: 500));

    emit(const DashboardLoaded(user: MockData.currentUser));
  }

  Future<void> _onLeaderboardLoadRequested(
    LeaderboardLoadRequested event,
    Emitter<DashboardState> emit,
  ) async {
    emit(DashboardLoading());

    // Simulate API call delay
    await Future.delayed(const Duration(milliseconds: 500));

    emit(
      const LeaderboardLoaded(entries: MockData.leaderboard) as DashboardState,
    );
  }

  Future<void> _onAnnouncementsLoadRequested(
    AnnouncementsLoadRequested event,
    Emitter<DashboardState> emit,
  ) async {
    emit(DashboardLoading());

    // Simulate API call delay
    await Future.delayed(const Duration(milliseconds: 500));

    emit(
      AnnouncementsLoaded(announcements: MockData.announcements)
          as DashboardState,
    );
  }
}

// States
abstract class DashboardState extends Equatable {
  const DashboardState();

  @override
  List<Object> get props => [];
}

class DashboardInitial extends DashboardState {}

class DashboardLoading extends DashboardState {}

class DashboardLoaded extends DashboardState {
  final User user;

  const DashboardLoaded({required this.user});

  @override
  List<Object> get props => [user];
}
