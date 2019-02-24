import 'package:flutter/material.dart';

class DateTableDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DataTable(
      onSelectAll: (select){},
        columns: <DataColumn>[
          DataColumn(
            label: Text('Column1'),
          ),
          DataColumn(
            label: Text('Column2'),
          ),
          DataColumn(
            label: Text('Column3'),
          ),
        ],
        rows: <DataRow>[
          DataRow(
            cells: <DataCell>[
              DataCell(Text('cell1')),
              DataCell(Text('cell1')),
              DataCell(Text('cell1')),
            ]
          ),
          DataRow(
              cells: <DataCell>[
                DataCell(Text('cell1')),
                DataCell(Text('cell1')),
                DataCell(Text('cell1')),
              ]
          ),
        ]);
  }

}