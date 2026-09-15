
import '../models/achievement.dart';
import '../models/user_progress.dart';

class AchievementUnlocks {
/// Returns IDs of all achievements currently unlocked by the user.
static List<String> unlockedIds({
required UserProgress progress,
required int journalCount,
required int missionsToday,
}) {
final ids = <String>[];

// First successful day.
if (progress.checkInDates.isNotEmpty) {
ids.add('first_day');
}

// Streak achievements.
if (_hasStreak(progress, 3)) {
ids.add('streak_3');
}

if (_hasStreak(progress, 7)) {
ids.add('streak_7');
}

if (_hasStreak(progress, 30)) {
ids.add('streak_30');
}

// Cigarettes avoided.
if (progress.cigarettesAvoided >= 100) {
ids.add('saved_100');
}

// Journal.
if (journalCount >= 1) {
ids.add('journal_1');
}

// Daily missions.
if (missionsToday >= 3) {
ids.add('missions_3');
}

return ids;
}

/// Returns the complete achievement catalog.
///
/// Status should be determined with [isUnlocked] using
/// the result of [unlockedIds].
static List<AchievementDef> allWithStatus({
required UserProgress progress,
required int journalCount,
required int missionsToday,
}) {
final unlocked = unlockedIds(
progress: progress,
journalCount: journalCount,
missionsToday: missionsToday,
).toSet();

return AchievementCatalog.items
    .map(
(achievement) => achievement,
)
    .toList();
}

/// Checks whether a specific achievement is unlocked.
static bool isUnlocked(
String id,
Set<String> unlocked,
) {
return unlocked.contains(id);
}

static bool _hasStreak(
UserProgress progress,
int requiredDays,
) {
return progress.longestStreak >= requiredDays ||
progress.currentStreak >= requiredDays;
}
}

