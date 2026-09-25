import 'package:flutter/material.dart';

import '../../../l10n/app_localizations.dart';
import 'legal_document_screen.dart';

/// Privacy Policy screen, reachable from Settings → About → Privacy Policy.
class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return LegalDocumentScreen(
      title: l10n.privacyPolicyTitle,
      lastUpdated: l10n.privacyPolicyLastUpdated,
      intro: l10n.privacyPolicyIntro,
      headerIcon: Icons.privacy_tip_rounded,
      contactEmail: l10n.legalContactEmail,
      sections: [
        LegalSection(
          icon: Icons.folder_shared_rounded,
          title: l10n.privacySection1Title,
          body: l10n.privacySection1Body,
        ),
        LegalSection(
          icon: Icons.tune_rounded,
          title: l10n.privacySection2Title,
          body: l10n.privacySection2Body,
        ),
        LegalSection(
          icon: Icons.lock_rounded,
          title: l10n.privacySection3Title,
          body: l10n.privacySection3Body,
        ),
        LegalSection(
          icon: Icons.hub_rounded,
          title: l10n.privacySection4Title,
          body: l10n.privacySection4Body,
        ),
        LegalSection(
          icon: Icons.fact_check_rounded,
          title: l10n.privacySection5Title,
          body: l10n.privacySection5Body,
        ),
        LegalSection(
          icon: Icons.child_care_rounded,
          title: l10n.privacySection6Title,
          body: l10n.privacySection6Body,
        ),
        LegalSection(
          icon: Icons.medical_information_rounded,
          title: l10n.privacySection7Title,
          body: l10n.privacySection7Body,
        ),
        LegalSection(
          icon: Icons.history_edu_rounded,
          title: l10n.privacySection8Title,
          body: l10n.privacySection8Body,
        ),
      ],
    );
  }
}