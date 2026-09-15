
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/theme/app_theme.dart';
import '../../../data/bloc/journal/journal_bloc.dart';
import '../../../data/models/journal_entry.dart';
import '../../../l10n/app_localizations.dart';
import '../../data/bloc/journal/journal_event.dart';
import 'puff_ui.dart';

class JournalSheet {
static Future<bool> show(BuildContext context) async {
final result = await showModalBottomSheet<bool>(
context: context,
isScrollControlled: true,
backgroundColor: Colors.transparent,
barrierColor: Colors.black.withValues(alpha: 0.55),
builder: (_) => const _JournalSheetBody(),
);

return result == true;
}
}

class _JournalSheetBody extends StatefulWidget {
const _JournalSheetBody();

@override
State<_JournalSheetBody> createState() => _JournalSheetBodyState();
}

class _JournalSheetBodyState extends State<_JournalSheetBody> {
int _mood = 3;

final _note = TextEditingController();

final _tags = <String>{};

@override
void dispose() {
_note.dispose();
super.dispose();
}

@override
Widget build(BuildContext context) {
final l10n = AppLocalizations.of(context);
final ru = Localizations.localeOf(context).languageCode == 'ru';
final isDark = Theme.of(context).brightness == Brightness.dark;

final moods = ['😣', '😕', '😐', '🙂', '😄'];

final surface =
isDark ? AppColors.surfaceDark : AppColors.surfaceLight;

final primaryText =
isDark ? Colors.white : AppColors.textPrimaryLight;

final secondaryText =
isDark
? AppColors.textSecondaryDark
    : AppColors.textSecondaryLight;

return Padding(
padding: EdgeInsets.only(
bottom: MediaQuery.viewInsetsOf(context).bottom,
),
child: Container(
decoration: BoxDecoration(
color: surface,
borderRadius: const BorderRadius.vertical(
top: Radius.circular(32),
),
border: Border(
top: BorderSide(
color: isDark
? Colors.white.withValues(alpha: 0.07)
    : Colors.black.withValues(alpha: 0.045),
),
),
boxShadow: [
BoxShadow(
color: Colors.black.withValues(
alpha: isDark ? 0.38 : 0.12,
),
blurRadius: 40,
spreadRadius: -8,
offset: const Offset(0, -12),
),
],
),
child: SafeArea(
top: false,
child: SingleChildScrollView(
physics: const BouncingScrollPhysics(),
padding: const EdgeInsets.fromLTRB(
20,
10,
20,
20,
),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
// ─────────────────────────────
// Handle
// ─────────────────────────────
Center(
child: Container(
width: 38,
height: 4,
decoration: BoxDecoration(
color: isDark
? Colors.white.withValues(alpha: 0.18)
    : Colors.black.withValues(alpha: 0.12),
borderRadius: BorderRadius.circular(99),
),
),
),

const SizedBox(height: 22),

// ─────────────────────────────
// Header
// ─────────────────────────────
Row(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Expanded(
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text(
l10n.journalTitle,
style: GoogleFonts.inter(
fontSize: 26,
height: 1.1,
fontWeight: FontWeight.w800,
letterSpacing: -0.7,
color: primaryText,
),
),
const SizedBox(height: 7),
Text(
l10n.journalHint,
style: GoogleFonts.inter(
fontSize: 13.5,
height: 1.45,
fontWeight: FontWeight.w500,
color: secondaryText,
),
),
],
),
),
],
),

const SizedBox(height: 24),

// ─────────────────────────────
// Mood section
// ─────────────────────────────
_SectionTitle(
title: ru ? 'Как ты себя чувствуешь?' : 'How are you feeling?',
isDark: isDark,
),

const SizedBox(height: 11),

Container(
padding: const EdgeInsets.all(7),
decoration: BoxDecoration(
color: isDark
? Colors.white.withValues(alpha: 0.035)
    : Colors.black.withValues(alpha: 0.025),
borderRadius: BorderRadius.circular(22),
border: Border.all(
color: isDark
? Colors.white.withValues(alpha: 0.055)
    : Colors.black.withValues(alpha: 0.04),
),
),
child: Row(
children: List.generate(
moods.length,
(i) {
final selected = _mood == i + 1;

return Expanded(
child: GestureDetector(
behavior: HitTestBehavior.opaque,
onTap: () {
setState(() {
_mood = i + 1;
});
},
child: AnimatedContainer(
duration: const Duration(
milliseconds: 220,
),
curve: Curves.easeOutCubic,
height: 58,
margin: const EdgeInsets.symmetric(
horizontal: 2,
),
decoration: BoxDecoration(
color: selected
? AppColors.accent.withValues(
alpha: isDark ? 0.15 : 0.11,
)
    : Colors.transparent,
borderRadius: BorderRadius.circular(17),
border: Border.all(
color: selected
? AppColors.accent.withValues(
alpha: 0.55,
)
    : Colors.transparent,
width: 1,
),
boxShadow: selected
? [
BoxShadow(
color: AppColors.accent
    .withValues(alpha: 0.12),
blurRadius: 12,
spreadRadius: -4,
),
]
    : null,
),
child: Center(
child: AnimatedScale(
duration: const Duration(
milliseconds: 220,
),
curve: Curves.easeOutBack,
scale: selected ? 1.12 : 1,
child: Text(
moods[i],
style: const TextStyle(
fontSize: 25,
),
),
),
),
),
),
);
},
),
),
),

const SizedBox(height: 24),

// ─────────────────────────────
// Tags
// ─────────────────────────────
_SectionTitle(
title: ru ? 'Что повлияло на день?' : 'What influenced your day?',
isDark: isDark,
),

const SizedBox(height: 11),

Wrap(
spacing: 8,
runSpacing: 8,
children: [
_tag(
ru ? 'стресс' : 'stress',
'stress',
isDark,
),
_tag(
ru ? 'еда' : 'food',
'food',
isDark,
),
_tag(
ru ? 'люди' : 'people',
'people',
isDark,
),
_tag(
ru ? 'работа' : 'work',
'work',
isDark,
),
_tag(
ru ? 'тяга' : 'craving',
'craving',
isDark,
),
_tag(
ru ? 'победа' : 'win',
'win',
isDark,
),
],
),

const SizedBox(height: 24),

// ─────────────────────────────
// Note
// ─────────────────────────────
_SectionTitle(
title: ru ? 'Заметка' : 'Note',
isDark: isDark,
),

const SizedBox(height: 11),

Container(
decoration: BoxDecoration(
color: isDark
? Colors.white.withValues(alpha: 0.035)
    : Colors.black.withValues(alpha: 0.025),
borderRadius: BorderRadius.circular(20),
border: Border.all(
color: isDark
? Colors.white.withValues(alpha: 0.06)
    : Colors.black.withValues(alpha: 0.045),
),
),
child: TextField(
controller: _note,
maxLines: 4,
minLines: 3,
textCapitalization: TextCapitalization.sentences,
style: GoogleFonts.inter(
fontSize: 14,
height: 1.45,
fontWeight: FontWeight.w500,
color: primaryText,
),
decoration: InputDecoration(
hintText: l10n.journalPlaceholder,
hintStyle: GoogleFonts.inter(
fontSize: 14,
height: 1.45,
fontWeight: FontWeight.w500,
color: secondaryText.withValues(alpha: 0.65),
),
border: InputBorder.none,
contentPadding: const EdgeInsets.all(16),
),
),
),

const SizedBox(height: 22),

// ─────────────────────────────
// Save button
// ─────────────────────────────
SizedBox(
width: double.infinity,
height: 54,
child: PrimaryCta(
label: l10n.save,
color: AppColors.accent,
onPressed: () {
context.read<JournalBloc>().add(
AddJournalEntry(
JournalEntry.create(
mood: _mood,
note: _note.text.trim(),
tags: _tags.toList(),
),
),
);

Navigator.pop(context, true);
},
),
),
],
),
),
),
),
);
}

Widget _tag(
String label,
String id,
bool isDark,
) {
final selected = _tags.contains(id);

return GestureDetector(
behavior: HitTestBehavior.opaque,
onTap: () {
setState(() {
if (selected) {
_tags.remove(id);
} else {
_tags.add(id);
}
});
},
child: AnimatedContainer(
duration: const Duration(milliseconds: 180),
curve: Curves.easeOutCubic,
padding: const EdgeInsets.symmetric(
horizontal: 13,
vertical: 9,
),
decoration: BoxDecoration(
color: selected
? AppColors.accent.withValues(
alpha: isDark ? 0.15 : 0.11,
)
    : isDark
? Colors.white.withValues(alpha: 0.035)
    : Colors.black.withValues(alpha: 0.025),
borderRadius: BorderRadius.circular(999),
border: Border.all(
color: selected
? AppColors.accent.withValues(alpha: 0.45)
    : isDark
? Colors.white.withValues(alpha: 0.055)
    : Colors.black.withValues(alpha: 0.045),
),
),
child: AnimatedDefaultTextStyle(
duration: const Duration(milliseconds: 180),
style: GoogleFonts.inter(
fontWeight: selected
? FontWeight.w700
    : FontWeight.w600,
fontSize: 12,
color: selected
? AppColors.accent
    : isDark
? Colors.white.withValues(alpha: 0.65)
    : Colors.black.withValues(alpha: 0.58),
),
child: Text(label),
),
),
);
}
}

class _SectionTitle extends StatelessWidget {
final String title;
final bool isDark;

const _SectionTitle({
required this.title,
required this.isDark,
});

@override
Widget build(BuildContext context) {
return Text(
title,
style: GoogleFonts.inter(
fontSize: 13,
fontWeight: FontWeight.w700,
letterSpacing: -0.1,
color: isDark
? Colors.white.withValues(alpha: 0.72)
    : Colors.black.withValues(alpha: 0.62),
),
);
}
}

