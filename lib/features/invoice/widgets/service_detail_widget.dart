import 'package:admin_clinical/constants/app_colors.dart';
import 'package:admin_clinical/constants/app_decoration.dart';
import 'package:admin_clinical/features/form/widgets/form_card.dart';
import 'package:admin_clinical/features/form/widgets/medicine_indication_widgets/result_medicine_indication.dart';
import 'package:admin_clinical/features/form/widgets/service_indication_widgets/result_indication.dart';
import 'package:admin_clinical/features/invoice/controllers/invoice_controller.dart';
import 'package:admin_clinical/features/invoice/screens/verify_invoice_information_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ServiceDetailWidget extends StatelessWidget {
  ServiceDetailWidget({super.key});

  final invoiceController = Get.find<InvoiceController>();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: FormCard(
                child: Row(
                  children: [
                    const Text(
                      'Hoang Ankin',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: AppColors.primaryColor,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 25),
                          shape: RoundedRectangleBorder(
                              borderRadius: AppDecoration.primaryRadiusBorder)),
                      onPressed: () {
                        invoiceController.changePage(
                            invoiceController.selectedPage.value + 1);
                      },
                      child: const Text(
                        'Approve All',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: AppColors.primarySecondColor,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 25),
                          shape: RoundedRectangleBorder(
                              borderRadius: AppDecoration.primaryRadiusBorder)),
                      onPressed: () {},
                      child: const Text(
                        'Cancel All',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(child: ResultIndication()),
            Expanded(child: FormCard(child: ResultMedicineIndication())),
          ],
        );
      },
    );
  }
}
