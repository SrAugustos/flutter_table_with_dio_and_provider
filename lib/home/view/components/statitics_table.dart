import 'package:flutter/material.dart';
import 'package:flutter_table_with_dio_and_provider/home/controller/statitics_repository.dart';
import 'package:provider/provider.dart';

class StatiticsTable extends StatefulWidget {
  const StatiticsTable({Key? key}) : super(key: key);

  @override
  _StatiticsTableState createState() => _StatiticsTableState();
}

class _StatiticsTableState extends State<StatiticsTable> {
  @override
  // implement initState
  void initState() {
    context.read<StatiticsRepository>().getData();
  }

  @override
  Widget build(BuildContext context) {
    // Instantiate our repository
    final data = Provider.of<StatiticsRepository>(context);
    return DataTable(
        columns: dataColumn.map((e) => DataColumn(label: Text(e))).toList(),
        // Create a DataCell list using map notation
        rows: data.statitics
            .where((element) => element.city != null)
            .map((e) => DataRow(cells: [
                  DataCell(Text(e.city.toString())),
                  DataCell(Text(e.state.toString())),
                  DataCell(Text(e.confirmed.toString())),
                  DataCell(Text(e.deathRate.toString())),
                  DataCell(Text(e.deaths.toString())),
                ]))
            .toList());
  }
}

List<String> dataColumn = [
  'city',
  'state',
  'confirmed',
  'death rate',
  'deaths'
];
