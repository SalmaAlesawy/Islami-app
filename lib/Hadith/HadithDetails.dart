import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamiapp/Models/Hadith_data.dart';


import '../core/gen/assets.gen.dart';
import '../core/themes/AppColors.dart';

class Hadithdetails extends StatefulWidget {
  final HadithData hadithData;
  const Hadithdetails({super.key,required this.hadithData});

  @override
  State<Hadithdetails> createState() => _HadithdetailsState();
}

class _HadithdetailsState extends State<Hadithdetails> {
  @override
  Widget build(BuildContext context) {

    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Assets.images.imgLeftCorner.image(color: Colors.black),
                    Assets.images.imgRightCorner.image(color: Colors.black)
                  ],
                ),
              ),
              const SizedBox(height: 50,),
              Container(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.all( 40.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,


                    children: [
                      Text(widget.hadithData.hadithTitle,style: textTheme.headlineSmall?.copyWith(color: Colors.black),textAlign: TextAlign.center,),
                      const SizedBox(height: 10,),
                      Text(widget.hadithData.hadithText,style: textTheme.bodyMedium?.copyWith(color: Colors.black),textAlign: TextAlign.center,)
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}
