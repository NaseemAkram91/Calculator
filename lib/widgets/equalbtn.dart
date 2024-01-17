import 'package:calculator/constant/colors.dart';
import 'package:calculator/provider/cal_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Equalbtn extends StatelessWidget {
  const Equalbtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Provider.of<CalProvider>(context, listen: false).setValue("=");
      },
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(30),
        child: Container(
          alignment: Alignment.center,
          height: 120,
          width: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: CustColors.fnBtnyClr),
          child: Text(
            "=",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}
