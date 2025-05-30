import 'package:flutter/material.dart';
import 'package:fruts_store/features/Home/peresntation/views/produt_View.dart';
import '../../features/Best_salling_frut/presentation/Views/Best Salling view.dart';
import '../../features/Home/domines/entites/CardEntity.dart';
import '../../features/Home/peresntation/views/mainView.dart';
import '../../features/Splash/Presentation/Veiws/SpalshView.dart';
import '../../features/auth/peresentation/views/SiginView.dart';
import '../../features/auth/peresentation/views/SignupView.dart';
import '../../features/checkout/presintation/views/checkout_view.dart';
import '../../features/on_bording/peresentation/Vews/on_bordView.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashVeiw.routeName:
      return MaterialPageRoute(builder: (context) => const SplashVeiw());
    case OnBordView.routeName:
      return MaterialPageRoute(builder: (context) => const OnBordView());
    case BestSallingView.routeName:
      return MaterialPageRoute(builder: (context) => const BestSallingView());
    case MainView.routeName:
      return MaterialPageRoute(builder: (context) => const MainView());
    case SiginView.routeName:
      return MaterialPageRoute(builder: (context) => const SiginView());
    case SignUpView.routeName:
      return MaterialPageRoute(builder: (context) => const SignUpView());
    case ProdutsView.routeName:
      return MaterialPageRoute(builder: (context) => const ProdutsView());
    case Checkout_View.routeName:
      return MaterialPageRoute(
          builder: (context) => Checkout_View(
                cartItems: settings.arguments as CartEntity,
              ));
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
