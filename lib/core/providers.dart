import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
// import 'package:flutter_stripe/flutter_stripe.dart';
// import 'package:logger/logger.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// final preferencesProvider = FutureProvider<SharedPreferences>((ref) async {
//   return SharedPreferences.getInstance();
// });

final firebaseFirestoreProvider = Provider<FirebaseFirestore>((ref) {
  return FirebaseFirestore.instance;
});

final firebaseAuthProvider = Provider<FirebaseAuth>((ref) {
  return FirebaseAuth.instance;
});

// final firebaseStorageProvider = Provider<FirebaseStorage>((ref) {
//   return FirebaseStorage.instance;
// });

// final firebaseAnalyticsProvider = Provider<FirebaseAnalytics>((ref) {
//   return FirebaseAnalytics.instance;
// });

final loggerProvider = Provider<Logger>((ref) {
  return Logger(
    printer: PrettyPrinter(
      colors: false,
      printEmojis: false,
      printTime: true,
    ),
  );
});

// final firebaseMessagingProvider = Provider<FirebaseMessaging>((ref) {
//   return FirebaseMessaging.instance;
// });

// final stripeProvider = Provider<Stripe>((ref) {
//   return Stripe.instance;
// });
