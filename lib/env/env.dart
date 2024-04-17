import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '/Users/mac/StudioProjects/news_app/.env')
final class Env {
  @EnviedField(varName: 'newsApiKey', obfuscate: true)
  static final String newsApiKey = _Env.newsApiKey;
}
