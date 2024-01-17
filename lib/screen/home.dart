import 'package:calculator/Data/btnlist.dart';
import 'package:calculator/provider/cal_provider.dart';
import 'package:calculator/widgets/custtextfield.dart';
import 'package:calculator/widgets/equalbtn.dart';
import 'package:flutter/material.dart';
import 'package:calculator/constant/colors.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class Home extends StatelessWidget {
  BoxDecoration decoration = const BoxDecoration(
    color: CustColors.primaryClr,
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(30),
      topRight: Radius.circular(30),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Consumer<CalProvider>(builder: (context, provider, _) {
      return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            CustTextfield(
              controller: provider.compController,
            ),
            const Spacer(),
            Container(
              height: MediaQuery.sizeOf(context).height * 0.6,
              width: double.infinity,
              decoration: decoration,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(4, (index) => ButtonList[index]),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:
                        List.generate(4, (index) => ButtonList[index + 4]),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:
                        List.generate(4, (index) => ButtonList[index + 8]),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: List.generate(
                                    3, (index) => ButtonList[index + 12]),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: List.generate(
                                    3, (index) => ButtonList[index + 16]),
                              ),
                            ],
                          ),
                        ),
                        Equalbtn(),
                        SizedBox(
                          width: 25,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
