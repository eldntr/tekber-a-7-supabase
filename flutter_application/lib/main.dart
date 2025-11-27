import 'package:flutter/material.dart';
import 'package:flutter_application/core/extensions/hive_extensions.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'package:flutter_application/core/app/app.dart';
import 'package:flutter_application/dependency_injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await _initializeSupabase();
  await _initializeHive();
  configureDependencyInjection();

  runApp(
    const FlutterSupabaseStarterApp(),
  );
}

Future<void> _initializeSupabase() async {
  await Supabase.initialize(
    url: "https://fyuowtqduqjsgluqdcwj.supabase.co",
    anonKey: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZ5dW93dHFkdXFqc2dsdXFkY3dqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjQxNjc4NTgsImV4cCI6MjA3OTc0Mzg1OH0.DZJRDuX1Riwhk_OXNo2PZPob2Hmsc_33ZXhpTlOff3Q",
  );
}

Future<void> _initializeHive() async {
  await Hive.initFlutter();
  await Hive.openThemeModeBox();
  await Hive.openAppSettingsBox();
}
