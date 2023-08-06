import 'package:gustavo_s_application2/data/rewards_data.dart';

import '../../images.dart';

List<RewardData> rewards = [
  RewardData(
      1,
      100,
      "5% off no Walmart",
      "Cupom que fornece um desconto de 5% em compras feito pelo site.",
      [RewardCategories.CUPOM, RewardCategories.DESCONTO],
      Images.walmart),
  RewardData(
      2,
      220,
      "15% off no Walmart",
      "Cupom que fornece um desconto de 15% em compras feito pelo site.",
      [RewardCategories.CUPOM, RewardCategories.DESCONTO],
      Images.walmart),
  RewardData(
      3,
      1000,
      "50% off na loja XYZ",
      "Cupom que fornece um desconto de 50% em compras feito pelo site.",
      [RewardCategories.CUPOM, RewardCategories.DESCONTO],
      Images.cupom),
  RewardData(
      4,
      1750,
      "Gift card Xbox 50\$",
      "Gift card do valor de 50\$ para Xbox.",
      [RewardCategories.CUPOM, RewardCategories.PRODUTO],
      Images.xbox),
  RewardData(
      5,
      1800,
      "Gift card Google 50\$",
      "Gift card do valor de 50\$ para Google.",
      [RewardCategories.CUPOM, RewardCategories.PRODUTO],
      Images.google),
  RewardData(
      6,
      1000,
      "Gift card Amazon 25\$",
      "Gift card do valor de 25\$ para Amazon.",
      [RewardCategories.CUPOM, RewardCategories.PRODUTO],
      Images.amazon),
  RewardData(7, 400, "Ecobag", "Ecobag com logo de reciclagem.",
      [RewardCategories.PRODUTO], Images.ecobag),
];
