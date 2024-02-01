import 'package:flutter/material.dart';

class TableScreen extends StatelessWidget {
  static String name = "table_screen";

  const TableScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listas'),
      ),
      body: _buildTable(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.home),
      ),
    );
  }

  Widget _buildTable() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        columns: const [
          DataColumn(label: Text('')),
          DataColumn(label: Text('Compromiso inicial')),
          DataColumn(label: Text('Diseño terminado')),
          DataColumn(label: Text('Puesta en marcha entrega')),
        ],
        rows: [
          _buildDataRow('Neto', 5000, 3000, 1000),
          _buildDataRow('IVA', 1900, 900, 90),
          _buildDataRow('Total', 6900, 3900, 1090),
          _buildDataRow('Total Final', 23790, 0, 0),
        ],
      ),
    );
  }

  DataRow _buildDataRow(String title, int value1, int value2, int value3) {
    return DataRow(
      cells: [
        DataCell(Text(title)),
        DataCell(Text('$value1')),
        DataCell(Text('$value2')),
        DataCell(Text('$value3')),
      ],
    );
  }
}
