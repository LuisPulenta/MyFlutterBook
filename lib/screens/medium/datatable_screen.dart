import 'package:flutter/material.dart';
import 'package:myflutterbook/themes/app_theme.dart';

class DatatableScreen extends StatelessWidget {
  const DatatableScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.primary,
        title: const Text('Datatable'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: DataTable(
            columns: const <DataColumn>[
              DataColumn(
                label: Expanded(
                  child: Text(
                    'No',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
              ),
              DataColumn(
                label: Expanded(
                  child: Text(
                    'Name',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
              ),
              DataColumn(
                label: Expanded(
                  child: Text(
                    'Age',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
              ),
              DataColumn(
                label: Expanded(
                  child: Text(
                    'Role',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
              ),
            ],
            rows: const <DataRow>[
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('1')),
                  DataCell(Text('Sarah')),
                  DataCell(Text('19')),
                  DataCell(Text('Student')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('2')),
                  DataCell(Text('Janine')),
                  DataCell(Text('43')),
                  DataCell(Text('Professor')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('3')),
                  DataCell(Text('William')),
                  DataCell(Text('27')),
                  DataCell(Text('Associate Professor')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('4')),
                  DataCell(Text('Steve Thomas')),
                  DataCell(Text('19')),
                  DataCell(Text('Student')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('5')),
                  DataCell(Text('Janine')),
                  DataCell(Text('43')),
                  DataCell(Text('Professor')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('6')),
                  DataCell(Text('Russell Harris')),
                  DataCell(Text('27')),
                  DataCell(Text('Associate Professor')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('7')),
                  DataCell(Text('Fred Sanchez')),
                  DataCell(Text('19')),
                  DataCell(Text('Student')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('8')),
                  DataCell(Text('Clarence Hernandez')),
                  DataCell(Text('43')),
                  DataCell(Text('Professor')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('9')),
                  DataCell(Text('Craig Watson')),
                  DataCell(Text('27')),
                  DataCell(Text('Associate Professor')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('10')),
                  DataCell(Text('Timothy Diaz')),
                  DataCell(Text('29')),
                  DataCell(Text('Associate Professor')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
