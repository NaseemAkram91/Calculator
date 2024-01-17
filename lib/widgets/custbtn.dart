import 'package:calculator/constant/colors.dart';
import 'package:calculator/provider/cal_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustButton extends StatelessWidget {
  const CustButton({super.key, required this.lbl, this.clr = Colors.white});
  final String lbl;
  final Color clr;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Provider.of<CalProvider>(context, listen: false).setValue(lbl);
      },
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(100),
        child: Container(
          alignment: Alignment.center,
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: CustColors.primaryClr2),
          child: Text(
            lbl,
            style: TextStyle(
                fontSize: 40, fontWeight: FontWeight.w700, color: clr),
          ),
        ),
      ),
    );
  }
}
