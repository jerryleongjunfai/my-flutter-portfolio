import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:my_portfolio/colors.dart';
import 'package:my_portfolio/header.dart';
import 'package:velocity_x/velocity_x.dart';

class FooterScreen extends StatelessWidget {
  const FooterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        VxDevice(
            mobile: VStack(
              [
                "Want to contact me? 👇🏻".text.center.white.xl2.make(),
                10.heightBox,
                "junfai2007@gmail.com"
                    .text
                    .color(Coloors.accentColor)
                    .semiBold
                    .make()
                    .box
                    .border(color: Coloors.accentColor)
                    .p16
                    .rounded
                    .make()
              ],
              crossAlignment: CrossAxisAlignment.center,
            ),
            web: HStack(
              [
                "Want to contact me? 👉🏻".text.center.white.xl2.make(),
                10.widthBox,
                "junfai2007@gmail.com"
                    .text
                    .color(Coloors.accentColor)
                    .semiBold
                    .make()
                    .box
                    .border(color: Coloors.accentColor)
                    .p16
                    .rounded
                    .make()
              ],
              alignment: MainAxisAlignment.spaceAround,
            ).w(context.safePercentWidth * 70).scale150().p16()),
        50.heightBox,
        CustomAppBar(),
        10.heightBox,
        "Thanks for scrolling 😄, "
            .richText
            .semiBold
            .white
            .withTextSpanChildren(
                ["that's all folks.".textSpan.gray500.make()]).make(),
        10.heightBox,
        [
          "Made with Flutter and Veloxity X".text.blue500.make(),
          10.widthBox,
          Icon(
            AntDesign.heart,
            color: Vx.blue400,
            size: 14,
          ),
        ].hStack(crossAlignment: CrossAxisAlignment.center)
      ],
      crossAlignment: CrossAxisAlignment.center,
    ).wFull(context).p16();
  }
}
