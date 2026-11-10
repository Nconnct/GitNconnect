import 'package:flutter/foundation.dart';

enum GhSponsorCheck { sponsor, notSponsor, notLinked, tokenRejected, unreachable }

/// GitNconnect community edition: all features are available without payment.
class PremiumManager {
  final ValueNotifier<bool?> hasPremiumNotifier = ValueNotifier<bool?>(true);

  Future<void> init() async {
    hasPremiumNotifier.value = true;
  }

  Future<bool> _readPremiumStatus() async => true;

  Future<GhSponsorCheck> updateGitHubSponsorPremium() async => GhSponsorCheck.sponsor;

  Future<void> _setGhSponsorPremium(bool value) async {
    hasPremiumNotifier.value = true;
  }

  /// Kept for compatibility with existing call sites; no repositories are culled.
  Future<bool> cullNonPremium() async => false;

  void dispose() {
    hasPremiumNotifier.dispose();
  }
}
