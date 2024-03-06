
class EnvArgument {
  final String? baseUrl, androidId, iosId;

  const EnvArgument({
    this.baseUrl,
    this.androidId,
    this.iosId,
  });
}

class Env {
  static Future<EnvArgument> getEnv() async {
    return const EnvArgument(
        baseUrl: "");
  }
}