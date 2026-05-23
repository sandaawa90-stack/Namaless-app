/// DateTime Extensions
/// 
/// Useful utility methods for date/time operations.
extension DateTimeExtensions on DateTime {
  /// Format as "Today", "Yesterday", or date
  String get friendlyDate {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final yesterday = today.subtract(const Duration(days: 1));
    final thisDate = DateTime(year, month, day);

    if (thisDate == today) {
      return 'Today';
    } else if (thisDate == yesterday) {
      return 'Yesterday';
    } else {
      return '$day/$month/$year';
    }
  }

  /// Check if date is today
  bool get isToday {
    final now = DateTime.now();
    return year == now.year && month == now.month && day == now.day;
  }

  /// Check if date is yesterday
  bool get isYesterday {
    final yesterday = DateTime.now().subtract(const Duration(days: 1));
    return year == yesterday.year && month == yesterday.month && day == yesterday.day;
  }

  /// Get difference in days from now
  int get daysFromNow {
    final now = DateTime.now();
    return difference(now).inDays;
  }

  /// Format time as "HH:MM"
  String get timeString {
    return '${hour.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, '0')}';
  }
}
