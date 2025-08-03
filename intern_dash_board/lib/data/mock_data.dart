import '../models/user.dart';

class MockData {
  static const User currentUser = User(
    id: '1',
    name: 'Aditya Magar',
    email: 'adityamagar29@gmail.com',
    referralCode: 'aditya29',
    totalDonations: 15750.0,
    rank: 3,
    rewards: ['Bronze Badge', 'Top Performer', 'Community Hero'],
  );

  static const List<LeaderboardEntry> leaderboard = [
    LeaderboardEntry(name: 'Priya Patel', donations: 25000.0, rank: 1),
    LeaderboardEntry(name: 'Arjun Kumar', donations: 18500.0, rank: 2),
    LeaderboardEntry(name: 'Rahul Sharma', donations: 15750.0, rank: 3),
    LeaderboardEntry(name: 'Sneha Gupta', donations: 12300.0, rank: 4),
    LeaderboardEntry(name: 'Vikram Singh', donations: 9800.0, rank: 5),
  ];

  static final List<Announcement> announcements = [
    Announcement(
      id: '1',
      title: 'New Milestone Achieved! 🎉',
      content:
          'We have successfully raised ₹1,00,000 this month! Thank you to all our amazing interns for their dedication.',
      date: DateTime.now().subtract(const Duration(days: 1)),
      isImportant: true,
    ),
    Announcement(
      id: '2',
      title: 'Weekly Training Session',
      content:
          'Join us for the weekly training session on effective fundraising techniques. Tomorrow at 3 PM in the main hall.',
      date: DateTime.now().subtract(const Duration(days: 2)),
      isImportant: false,
    ),
    Announcement(
      id: '3',
      title: 'Reward System Update',
      content:
          'New rewards have been added to the system! Check your dashboard to see what you can unlock next.',
      date: DateTime.now().subtract(const Duration(days: 3)),
      isImportant: false,
    ),
    Announcement(
      id: '4',
      title: 'Top Performer Recognition',
      content:
          'Congratulations to Priya Patel for being this month\'s top performer with ₹25,000 raised!',
      date: DateTime.now().subtract(const Duration(days: 5)),
      isImportant: true,
    ),
  ];
}
