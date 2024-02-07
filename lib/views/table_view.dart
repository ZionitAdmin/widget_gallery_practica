import 'package:flutter/material.dart';

class TableView extends StatelessWidget {
  static String name = "table_view";

  const TableView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        columns: const [
          DataColumn(label: Text('')),
          DataColumn(label: Text('Compromiso inicial')),
          DataColumn(label: Text('Diseño terminado')),
          DataColumn(label: Text('Puesta en marcha')),
          DataColumn(label: Text('entrega')),
        ],
        rows: [
          _buildDataRow('Neto', 5000, 3000, 1000, 10000),
          _buildDataRow('IVA', 1900, 900, 90, 1900),
          _buildDataRow('Total', 6900, 3900, 1090, 11900),
          _buildDataRow('Total Final', 23790, 0, 0, 0, isTotal: true),
        ],
      ),
    );
  }

  DataRow _buildDataRow(String title, int value1, int value2, int value3, int value4, {bool isTotal = false}) {
    return DataRow(
      cells: [
        DataCell(Text(title)),
        DataCell(isTotal ? const Text('') : Text('$value1')),
        DataCell(isTotal ? const Text('') : Text('$value2')),
        DataCell(isTotal ? const Text('') :  Text('$value3')),
        DataCell(isTotal ? Text('$value1') : Text('$value4')),
      ],
    );
  }
}
