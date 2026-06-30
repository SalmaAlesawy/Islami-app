import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islamiapp/core/gen/assets.gen.dart';
import 'package:islamiapp/core/themes/AppColors.dart';
import 'package:islamiapp/features/Radio/widgets/CustomElevatedButton.dart';
import 'package:islamiapp/features/radio/radio_view_model/radio_cubit/radio_cubit.dart';
import 'package:islamiapp/features/radio/widgets/CustomListView.dart';

class RadioView extends StatefulWidget {
  const RadioView({super.key});

  @override
  State<RadioView> createState() => _RadioViewState();
}

class _RadioViewState extends State<RadioView> {
  PageController pageController = PageController();
  bool? isReciters = false;

  @override
  Widget build(BuildContext context) {
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Customelevatedbutton(
                    buttonText: "Radio",
                    buttonColor: isReciters == false
                        ? AppColors.primaryColor
                        : Colors.transparent,
                    textColor: isReciters == false
                        ? AppColors.scaffoldBackGroundColor
                        : Colors.white,

                    /// set state
                    onPressed: () {
                      setState(() {});
                      pageController.animateToPage(0,
                          duration: const Duration(seconds: 1),
                          curve: Curves.easeInOut);
                    },
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Customelevatedbutton(
                    buttonText: "Reciters",
                    buttonColor: isReciters == true
                        ? AppColors.primaryColor
                        : Colors.transparent,
                    textColor: isReciters == true
                        ? AppColors.scaffoldBackGroundColor
                        : Colors.white,

                    ///set state
                    onPressed: () {
                      setState(() {});
                      pageController.animateToPage(1,
                          duration: const Duration(seconds: 1),
                          curve: Curves.easeInOut);
                    },
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: PageView(

                ///set state
                  onPageChanged: (value) {
                    isReciters = !isReciters!;
                    setState(() {});
                  },
                  controller: pageController,
                  children: [
                    BlocBuilder<RadioCubit, RadioState>(
                      builder: (context, state) {
                        switch (state) {
                          case RadioInitial():
                            return const Text("data");
                          case RadioLoading():
                            return const CircularProgressIndicator();
                          case GetRadioSuccess():
                            return ListView.separated(
                              shrinkWrap: true,
                              separatorBuilder: (context, index) =>
                              const SizedBox(
                                height: 13,
                              ),
                              itemBuilder: (context, index) =>
                                  Customlistview(radio: state.radioData[index]),
                              itemCount: state.radioData.length,
                              scrollDirection: Axis.vertical,
                            );
                          case GetRadioError():
                            print("Error view: ${state.errorMessage}");
                            return Text(state.errorMessage);

                        }
                      },
                    ),
                    BlocBuilder<RadioCubit, RadioState>(
                      builder: (context, state) {
                        if(state is GetRadioSuccess){
                        return ListView.separated(
                          shrinkWrap: true,
                          separatorBuilder: (context, index) =>
                          const SizedBox(
                            height: 13,
                          ),
                          itemBuilder: (context, index) =>
                              Customlistview(radio: state.radioData[index]),
                          itemCount: 5,
                          scrollDirection: Axis.vertical,
                        );
                      }
                        else {
                          return const Text("data");
                        }
                        },
                    )
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
