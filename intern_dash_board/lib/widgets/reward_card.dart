import 'package:flutter/material.dart';

class RewardCard extends StatelessWidget {
  final String title;
  final bool isUnlocked;

  const RewardCard({super.key, required this.title, required this.isUnlocked});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isUnlocked
            ? Theme.of(context).cardColor
            : (Theme.of(context).brightness == Brightness.dark
                  ? Colors.grey[800]
                  : Colors.grey[100]),
        borderRadius: BorderRadius.circular(12),
        border: isUnlocked
            ? Border.all(color: Theme.of(context).primaryColor, width: 2)
            : Border.all(
                color: Theme.of(context).brightness == Brightness.dark
                    ? Colors.grey[600]!
                    : Colors.grey[300]!,
              ),
        boxShadow: isUnlocked
            ? [
                BoxShadow(
                  color: Theme.of(context).primaryColor.withOpacity(0.1),
                  blurRadius: 8,
                  offset: const Offset(0, 2),
                ),
              ]
            : null,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            isUnlocked ? Icons.emoji_events : Icons.lock,
            color: isUnlocked
                ? Theme.of(context).primaryColor
                : (Theme.of(context).brightness == Brightness.dark
                      ? Colors.grey[600]
                      : Colors.grey[400]),
            size: 32,
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              fontWeight: FontWeight.w600,
              color: isUnlocked
                  ? Theme.of(context).primaryColor
                  : (Theme.of(context).brightness == Brightness.dark
                        ? Colors.grey[500]
                        : Colors.grey[600]),
            ),
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
