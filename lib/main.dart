import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'core/helpes_function/on_Gnerate_Route.dart';
import 'core/services/services/CustomBlocObserver.dart';
import 'core/services/services/git_it_Service.dart';
import 'core/services/services/shardpreferance_Singlton.dart';
import 'core/uitels/App_Color.dart';
import 'features/Splash/Presentation/Veiws/SpalshView.dart';
import 'firebase_options.dart';
import 'generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Bloc.observer = MyBlocObserver();

  await SharPref.init();
  setupGitit();
  runApp(const FluitHub());
}

class FluitHub extends StatelessWidget {
  const FluitHub({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: 'Cairo',
          scaffoldBackgroundColor: Colors.white,
          colorScheme: ColorScheme.fromSeed(seedColor: AppColor.kPrimaryColor)),
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      locale: const Locale('ar'),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      initialRoute: SplashVeiw.routeName,
    );
  }
}
