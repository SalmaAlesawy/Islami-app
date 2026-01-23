import 'package:flutter/material.dart';
import 'package:islamiapp/core/gen/assets.gen.dart';
import 'package:islamiapp/core/themes/AppColors.dart';
import 'package:islamiapp/widgets/CustomElevatedButton.dart';

import '../widgets/CustomListView.dart';

class RadioView extends StatefulWidget {
  const RadioView({super.key});

  @override
  State<RadioView> createState() => _RadioViewState();
}

class _RadioViewState extends State<RadioView> {
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: Assets.images.radioBackground.provider(),
              fit: BoxFit.cover)),
      child: SafeArea(
        child: Column(
          children: [
            Assets.images.quraanHeader.image(height: 171, width: 291),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Customelevatedbutton(
                      buttonText: "Radio",
                      buttonColor: AppColors.primaryColor,
                      textColor: AppColors.scaffoldBackGroundColor),
                  SizedBox(
                    width: 10,
                  ),
                  Customelevatedbutton(
                      buttonText: "Reciters",
                      buttonColor: Colors.transparent,
                      textColor: Colors.white)
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
                child: PageView(
                  children:[ ListView.separated(
                    shrinkWrap: true,
                                separatorBuilder: (context, index) => const SizedBox(
                  height: 13,
                                ),
                                itemBuilder: (context, index) => Customlistview(),
                                itemCount: 5,
                                scrollDirection: Axis.vertical,
                              ),
                    ListView.separated(
                      shrinkWrap: true,
                      separatorBuilder: (context, index) => const SizedBox(
                        height: 13,
                      ),
                      itemBuilder: (context, index) => Customlistview(),
                      itemCount: 5,
                      scrollDirection: Axis.vertical,
                    )
                  ]
                ),

            )
          ],
        ),
      ),
    );

  }
}
