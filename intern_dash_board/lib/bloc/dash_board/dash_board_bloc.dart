// Bloc
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

    emit(const LeaderboardLoaded(entries: MockData.leaderboard));
  }

  Future<void> _onAnnouncementsLoadRequested(
    AnnouncementsLoadRequested event,
    Emitter<DashboardState> emit,
  ) async {
    emit(DashboardLoading());

    // Simulate API call delay
    await Future.delayed(const Duration(milliseconds: 500));

    emit(AnnouncementsLoaded(announcements: MockData.announcements));
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
