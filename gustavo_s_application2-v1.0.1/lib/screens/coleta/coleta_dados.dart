import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gustavo_s_application2/core/app_export.dart';
import 'package:gustavo_s_application2/core/utils/sacos_coletados_to_points.dart';
import 'package:gustavo_s_application2/data/coleta_data.dart';
import 'package:gustavo_s_application2/data/localizacao_data.dart';
import 'package:gustavo_s_application2/data/tipos_sacos.dart';
import 'package:gustavo_s_application2/images.dart';
import 'package:gustavo_s_application2/screens/common/screen.dart';
import 'package:gustavo_s_application2/screens/common/tag_selector.dart';
import 'package:provider/provider.dart';

import '../../main.dart';
import '../../widgets/location_row.dart';

class InputQuantidadeTipoSaco extends StatefulWidget {
  final SacoColetado saco;
  final void Function(int) setNumber;

  const InputQuantidadeTipoSaco({required this.saco, required this.setNumber});

  @override
  State<StatefulWidget> createState() {
    return _InputQuantidadeTipoSaco();
  }
}

class _InputQuantidadeTipoSaco extends State<InputQuantidadeTipoSaco> {
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller.text = widget.saco.quantidade.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: TextField(
            controller: _controller,
            onChanged: (newInput) {
              try {
                widget.setNumber(int.parse(newInput));
              } on FormatException {
                widget.setNumber(0);
              }
            },
            decoration:
                new InputDecoration(labelText: widget.saco.tipoSaco.name),
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly
            ], // Only numbers can be entered
          ),
        ),
      ],
    );
  }
}

class CollectionDataScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CollectionDataScreenState();
  }
}

class CollectionDataScreenState extends State<CollectionDataScreen> {
  List<SacoColetado> quantidades = [
    for (var tipoSaco in TiposSacos.values) SacoColetado(tipoSaco, 0),
  ];
  DateTime coletaTimestamp = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: coletaTimestamp,
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(Duration(days: 30 * 3)));

    if (picked != null && picked != coletaTimestamp) {
      setState(() {
        coletaTimestamp = picked;
      });
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked =
        await showTimePicker(context: context, initialTime: TimeOfDay.now());

    if (picked != null && picked != TimeOfDay.fromDateTime(coletaTimestamp)) {
      setState(() {
        coletaTimestamp = new DateTime(
            coletaTimestamp.year,
            coletaTimestamp.month,
            coletaTimestamp.day,
            picked.hour,
            picked.minute);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomScreen(
      title: "Agendar coleta",
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "A coleta será feita em:",
                  style: TextStyle(fontSize: 18),
                ),
                LocationRow(
                  localizacaoData:
                      context.watch<AgendaColetaState>().localizacao,
                  icon: Images.local,
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Quantidade de cada tipo:",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                for (var quantidade in quantidades.indexed)
                  InputQuantidadeTipoSaco(
                    saco: quantidade.$2,
                    setNumber: (int newQuantidade) {
                      quantidades[quantidade.$1].quantidade = newQuantidade;
                    },
                  )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Data da coleta",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text("${coletaTimestamp.toLocal()}"),
                SizedBox(
                  height: 8.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () => _selectDate(context),
                      child: const Text('Select date'),
                    ),
                    ElevatedButton(
                      onPressed: () => _selectTime(context),
                      child: const Text('Select time'),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: Text("Agendar"),
              onPressed: () {
                Provider.of<ColetaDataState>(context, listen: false).addColeta(
                    ColetaData(
                        -1,
                        Provider.of<AgendaColetaState>(context, listen: false)
                            .localizacao
                            .id,
                        this
                            .quantidades
                            .where((element) => element.quantidade > 0)
                            .toList(),
                        this.coletaTimestamp));
                Provider.of<UserDataState>(context, listen: false)
                    .increasePoints(sacosColetadosToPoints(this.quantidades));
                showDialog(
                    context: context,
                    builder: (context) => Dialog(
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  "Agendamento realizado com sucesso!",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                              ],
                            ),
                          ),
                        )).then((_) {
                  Navigator.of(context).popUntil(ModalRoute.withName('/'));
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
