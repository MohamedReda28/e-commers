import 'package:flutter/material.dart';
import 'package:fruts_store/core/services/services/firebase_Auth_Servece.dart';
import 'package:fruts_store/features/Home/peresntation/views/mainView.dart';
import 'package:fruts_store/features/Splash/Presentation/Veiws/widgets/splashViewBody.dart';
import 'package:fruts_store/features/auth/peresentation/views/SiginView.dart';
import '../../../../constsns.dart';
import '../../../../core/services/services/shardpreferance_Singlton.dart';
import '../../../on_bording/peresentation/Vews/on_bordView.dart';

class SplashVeiw extends StatefulWidget {
  const SplashVeiw({super.key});
  static const routeName = 'splash';

  @override
  State<SplashVeiw> createState() => _SplashVeiwState();
}

class _SplashVeiwState extends State<SplashVeiw> {
  @override
  void initState() {
    excutNavigation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashViewBody(),
    );
  }

  void excutNavigation() {
    bool isBordingViewSee = SharPref.getBool(kIsBordingViewSeen);
    Future.delayed(
      const Duration(seconds: 3),
      () {
        if (isBordingViewSee) {
          var isloggedIn = FirebaseAuthServece().isLoggedIn();

          if (isloggedIn) {
            Navigator.pushReplacementNamed(context, MainView.routeName);
          } else {
            Navigator.pushReplacementNamed(context, SiginView.routeName);
          }
        } else {
          Navigator.pushReplacementNamed(context, OnBordView.routeName);
        }
      },
    );
  }
}
