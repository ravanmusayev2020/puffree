import 'package:flutter/material.dart';

import '../../../l10n/app_localizations.dart';
import 'legal_document_screen.dart';

/// Terms of Use screen, reachable from Settings → About → Terms of Use.
class TermsOfUseScreen extends StatelessWidget {
  const TermsOfUseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return LegalDocumentScreen(
      title: l10n.termsOfUseTitle,
      lastUpdated: l10n.termsOfUseLastUpdated,
      intro: l10n.termsOfUseIntro,
      headerIcon: Icons.article_rounded,
      contactEmail: l10n.legalContactEmail,
      sections: [
        LegalSection(
          icon: Icons.task_alt_rounded,
          title: l10n.termsSection1Title,
          body: l10n.termsSection1Body,
        ),
        LegalSection(
          icon: Icons.smoke_free_rounded,
          title: l10n.termsSection2Title,
          body: l10n.termsSection2Body,
        ),
        LegalSection(
          icon: Icons.badge_rounded,
          title: l10n.termsSection3Title,
          body: l10n.termsSection3Body,
        ),
        LegalSection(
          icon: Icons.workspace_premium_rounded,
          title: l10n.termsSection4Title,
          body: l10n.termsSection4Body,
        ),
        LegalSection(
          icon: Icons.medical_information_rounded,
          title: l10n.termsSection5Title,
          body: l10n.termsSection5Body,
        ),
        LegalSection(
          icon: Icons.block_rounded,
          title: l10n.termsSection6Title,
          body: l10n.termsSection6Body,
        ),
        LegalSection(
          icon: Icons.gavel_rounded,
          title: l10n.termsSection7Title,
          body: l10n.termsSection7Body,
        ),
        LegalSection(
          icon: Icons.update_rounded,
          title: l10n.termsSection8Title,
          body: l10n.termsSection8Body,
        ),
      ],
    );
  }
}