import 'package:flutter/material.dart';
import '../models/Holiday.dart';

class HolidaysTable extends StatelessWidget {
  final List<Holiday> holidays;
  HolidaysTable(this.holidays);

  Widget bodyData() {
    return DataTable(
        columns: <DataColumn>[
          DataColumn(
            label: Text("Name of Holiday"),
            numeric: false,
            tooltip: "To display Name of the holiday",
          ),
          DataColumn(
            label: Text("Start Date "),
            numeric: false,
            tooltip: "To display the name of Day",
          ),
          DataColumn(
            label: Text("End Date"),
            numeric: false,
            tooltip: "To display the name of Day",
          ),
          DataColumn(
            label: Text("Type"),
            numeric: false,
            tooltip: "To display the name of Day",
          ),
        ],
        rows: holidays
            .map(
              (name) => DataRow(
                    cells: [
                      DataCell(
                        Text(name.nameOfHoliday),
                        showEditIcon: false,
                        placeholder: false,
                      ),
                      DataCell(
                        Text(name.startDate),
                        showEditIcon: false,
                        placeholder: false,
                      ),
                      DataCell(
                        Text(name.endDate),
                        showEditIcon: false,
                        placeholder: false,
                      ),
                      DataCell(
                        Text(name.type),
                        showEditIcon: false,
                        placeholder: false,
                      )
                    ],
                  ),
            )
            .toList());
  }

  @override
  Widget build(BuildContext context) {
    return bodyData();
  }
}
