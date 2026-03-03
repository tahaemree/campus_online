/// Centralized environment configuration.
///
/// Values are injected at build time via `--dart-define`.
/// For production builds, override these using:
/// ```
/// flutter build apk --dart-define=SUPABASE_URL=<url> --dart-define=SUPABASE_ANON_KEY=<key>
/// ```
class EnvConfig {
  EnvConfig._();

  static const String supabaseUrl = String.fromEnvironment(
    'SUPABASE_URL',
    defaultValue: 'https://hxnkxcxgdknevokplkko.supabase.co',
  );

  static const String supabaseAnonKey = String.fromEnvironment(
    'SUPABASE_ANON_KEY',
    defaultValue: 'sb_publishable_pefV7uScfBi0igQg30BJfw_3Zir2Ws5',
  );
}
