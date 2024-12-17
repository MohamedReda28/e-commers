import 'package:flutter/material.dart';
import '../../features/Best_salling_frut/presentation/Views/Best Salling view.dart';
import '../../features/Home/peresntation/views/homeView.dart';
import '../../features/Splash/Presentation/Veiws/SpalshView.dart';
import '../../features/auth/peresentation/views/SiginView.dart';
import '../../features/auth/peresentation/views/SignupView.dart';
import '../../features/on_bording/peresentation/Vews/on_bordView.dart';



Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashVeiw.routeName:
      return MaterialPageRoute(builder: (context) => const SplashVeiw());
    case OnBordView.routeName:
      return MaterialPageRoute(builder: (context) => const OnBordView());
    case BestSallingView.routeName:
      return MaterialPageRoute(builder: (context) => const BestSallingView());
    case HomeView.routeName:
      return MaterialPageRoute(builder: (context) => const HomeView());
    case SiginView.routeName:
      return MaterialPageRoute(builder: (context) => const SiginView());
    case SignUpView.routeName:
      return MaterialPageRoute(builder: (context) => const SignUpView());
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
