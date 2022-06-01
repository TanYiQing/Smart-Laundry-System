import 'package:final_year_project/models/customerReport.dart';
import 'package:final_year_project/models/errorMachine.dart';
import 'package:final_year_project/models/order.dart';
import 'package:final_year_project/pages/laundryOwner/businessreport/controller/report_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReportPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            title: GetBuilder<ReportController>(builder: (controller) {
              return Text(controller.generateReportType.value.toString().tr);
            }),
          ),
          body: GetBuilder<ReportController>(builder: (controller) {
            return SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal, child: buildDataTable()),
            );
          })),
    );
  }

  Widget buildDataTable() {
    final columnsIncome = [
      'Order ID'.tr,
      'Receipt ID'.tr,
      'Email'.tr,
      'Name'.tr,
      'Phone Number'.tr,
      'Order Method'.tr,
      'Collect Time'.tr,
      'Note to Laundry'.tr,
      'Laundry ID'.tr,
      'Machine ID'.tr,
      'Machine Type'.tr,
      'Price (RM)'.tr,
      'Add On 1'.tr,
      'Add On 2'.tr,
      'Add On 3'.tr,
      'Total Price (RM)'.tr,
      'Order Created'.tr
    ];

    final columnsError = [
      'Error ID'.tr,
      'Name'.tr,
      'Phone Number'.tr,
      'Email'.tr,
      'Machine ID'.tr,
      'Machine Type'.tr,
      'Error'.tr
    ];
    final columnsCustomer = [
      'Date'.tr,
      'Page Views'.tr,
      'Orders'.tr,
      'Transaction Amount (RM)'.tr,
    ];

    return GetBuilder<ReportController>(builder: (controller) {
      return DataTable(
          columns: (controller.generateReportType.value == "Income Report")
              ? getColumnsIncome(columnsIncome)
              : (controller.generateReportType.value == "Error Machine Report")
                  ? getColumnsError(columnsError)
                  : getColumnsCustomer(columnsCustomer),
          rows: (controller.generateReportType.value == "Income Report")
              ? getRowsIncome(controller.incomeReportList)
              : (controller.generateReportType.value == "Error Machine Report")
                  ? getRowsError(controller.errorReportList)
                  : getRowsCustomer(controller.customerReportList));
    });
  }

  List<DataColumn> getColumnsIncome(List<String> columns) => columns
      .map((String column) => DataColumn(
            label: Text(column),
          ))
      .toList();

  List<DataRow> getRowsIncome(List<Order> orders) => orders.map((Order order) {
        final cells = [
          order.orderId,
          order.receiptId,
          order.email,
          order.name,
          order.phone,
          order.ordermethod,
          order.collecttime,
          order.notetolaundry,
          order.laundryId,
          order.machineId,
          order.machineType,
          order.price,
          order.addon1,
          order.addon2,
          order.addon3,
          order.totalPrice,
          order.orderCreated
        ];
        return DataRow(cells: getCells(cells));
      }).toList();

  List<DataColumn> getColumnsError(List<String> columns) => columns
      .map((String column) => DataColumn(
            label: Text(column),
          ))
      .toList();
  List<DataRow> getRowsError(List<ErrorMachine> machines) =>
      machines.map((ErrorMachine machine) {
        final cells = [
          machine.errorId,
          machine.name,
          machine.phone,
          machine.email,
          machine.machineId,
          machine.machineType,
          machine.error
        ];
        return DataRow(cells: getCells(cells));
      }).toList();

  List<DataColumn> getColumnsCustomer(List<String> columns) => columns
      .map((String column) => DataColumn(
            label: Text(column),
          ))
      .toList();

  List<DataRow> getRowsCustomer(List<CustomerReport> customers) =>
      customers.map((CustomerReport customer) {
        final cells = [
          customer.date,
          customer.pageViews,
          customer.orderNum,
          customer.transactionAmount
        ];
        return DataRow(cells: getCells(cells));
      }).toList();

  List<DataCell> getCells(List<dynamic> cells) =>
      cells.map((data) => DataCell(Text('$data'))).toList();
}
