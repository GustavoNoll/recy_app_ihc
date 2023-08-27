import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gustavo_s_application2/data/tipos_sacos.dart';
import 'package:gustavo_s_application2/screens/common/app.dart';
import 'package:gustavo_s_application2/theme/theme_helper.dart';
import 'package:gustavo_s_application2/routes.dart';
import 'package:provider/provider.dart';

import 'core/constants/rewards.dart';
import 'data/coleta_data.dart';
import 'data/localizacao_data.dart';
import 'data/user_data.dart';

class UserDataState with ChangeNotifier {
  int _points = 1000;
  List<ClaimedReward> _claimedRewards = [
    ClaimedReward(1, DateTime.now().subtract(Duration(days: 7)), generateRandomUUID()),
    ClaimedReward(4, DateTime.now().subtract(Duration(days: 3)), generateRandomUUID())
  ];

  int get points => _points;
  List<ClaimedReward> get claimedRewards => _claimedRewards;

  bool claimReward(int rewardId) {
    final index = rewards.indexWhere((element) => element.id == rewardId);

    if (index == -1 || rewards[index].cost > _points) {
      return false;
    }

    _points -= rewards[index].cost;
    _claimedRewards.add(ClaimedReward(rewardId, DateTime.now(), generateRandomUUID()));
    notifyListeners();

    return true;
  }

  void increasePoints(int points) {
    _points += points;
    notifyListeners();
  }
}

class LocalizacaoDataState with ChangeNotifier {
  List<LocalizacaoData> _localizacoes = [
    LocalizacaoData(1, "Casa", "Rua XYZ, 123"),
    LocalizacaoData(2, "Escritório", "Rua ABC, 456"),
  ];

  List<LocalizacaoData> get localizacoes => _localizacoes;

  // Adiciona nova localizacao caso id seja -1, retorna id da localizacao
  int addLocalizacao(LocalizacaoData localizacao) {
    if (localizacao.id != -1) {
      return localizacao.id;
    }

    localizacao.id = _localizacoes.last.id + 1;
    _localizacoes.add(localizacao);
    notifyListeners();

    return localizacao.id;
  }

  void hideLocalizacao(int id) {
    int index = _localizacoes.indexWhere((element) => element.id == id);

    if (index != -1) {
      _localizacoes[index].visible = false;
    }

    notifyListeners();
  }
}

class ColetaDataState with ChangeNotifier {
  List<ColetaData> _coletas = [
    ColetaData(
      1,
      2,
      [SacoColetado(TiposSacos.ORGANICO, 3), SacoColetado(TiposSacos.VIDRO, 1)],
      DateTime.now().subtract(Duration(days: 3)),
    ),
    ColetaData(
      2,
      1,
      [
        SacoColetado(TiposSacos.ELETRONICO, 2),
        SacoColetado(TiposSacos.PLASTICO, 4)
      ],
      DateTime.now().subtract(Duration(days: 7)),
    ),
  ];

  List<ColetaData> get coletas => _coletas;

  bool addColeta(ColetaData coletaData) {
    coletaData.id = _coletas.last.id + 1;
    _coletas.add(coletaData);
    _coletas.sort((a, b) => b.timestamp.difference(a.timestamp).inSeconds);
    notifyListeners();

    return true;
  }
}

class AgendaColetaState with ChangeNotifier {
  LocalizacaoData _localizacao = LocalizacaoData(-1, "---", "---");

  LocalizacaoData get localizacao => _localizacao;

  void set(localizacao) {
    _localizacao = localizacao;
    notifyListeners();
  }
}

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ///Please update theme as per your need if required.
  ThemeHelper().changeTheme('primary');
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserDataState()),
        ChangeNotifierProvider(create: (_) => LocalizacaoDataState()),
        ChangeNotifierProvider(create: (_) => ColetaDataState()),
        ChangeNotifierProvider(create: (_) => AgendaColetaState()),
      ],
      child: NewMyApp(),
    ),
  );
}

class NewMyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        visualDensity: VisualDensity.standard,
      ),
      title: 'ReciApp',
      home: App(),
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.home.name,
      routes: AppRoutes.routes,
    );
  }
}
