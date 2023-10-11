import 'package:flutter/material.dart';
import 'package:valecandss/features/register/presentation/views/views.dart';
import 'package:valecandss/features/register/presentation/widgets/register_smooth_indicator.dart';
import 'package:valecandss/features/shared/helpers/herlpers.dart';
import 'package:valecandss/features/shared/presentation/widgets/widgets_shared.dart';


class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});
  @override
  Widget build(BuildContext context) {

    final paddingHorizontyal = ResponsivePadding(context, PaddingType.horizontal);
    final paddingVertical = ResponsivePadding(context, PaddingType.vertical);

    PageController registerSreensCroller = PageController();

    return Scaffold(
      body: Padding(
        padding: 
          EdgeInsets.symmetric(
            horizontal: paddingHorizontyal, 
            vertical: paddingVertical,
            ),
        child: Stack(
          children: [
            PageView(
              controller: registerSreensCroller,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                RegisterName(),
                RegisterPicture(),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  RegisterSmoothIndicator(
                    controller: registerSreensCroller,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: FilledIconButtonShared(
                          icon: Icons.arrow_back_ios_new_rounded,
                          onPressed: () {
                            registerSreensCroller.previousPage(
                              duration: const Duration(milliseconds: 400), 
                              curve: Curves.easeInOutCirc);
                          },
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: FilledTextButtonShared(
                          text: 'Continuar',
                          onPressed: () {
                            registerSreensCroller.nextPage(
                              duration: const Duration(milliseconds: 400), 
                              curve: Curves.easeInOutCirc);
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
