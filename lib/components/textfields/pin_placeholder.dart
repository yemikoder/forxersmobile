import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../config/brandstyle_config.dart';
import 'digiboard2.dart';

class PinPlaceholder extends StatefulWidget {
  final Function(String)? onPin;
  final bool changePin;
  PinPlaceholder({Key? key, this.onPin, this.changePin=false}) : super(key: key);

  @override
  State<PinPlaceholder> createState() => _PinPlaceholder2State();
}

class _PinPlaceholder2State extends State<PinPlaceholder> {

  String pin = "";
  bool processing = false;
  //final DashboardController _dashBoardController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Center(
          child: Container(
            constraints: BoxConstraints(
                maxWidth: 80.w
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _dot(pin.isNotEmpty),
                _dot(pin.length > 1),
                _dot(pin.length > 2),
                _dot(pin.length > 3),
              ],
            ),
          ),
        ),
        //SizedBox(height: 0.5.h,),
        Center(
          child: SizedBox(
            width: 80.w,
            child: DigitBoard2(
              onChange: (String v) async {
                setState(() {
                  if(v != "<<" && pin.length < 4){
                    pin += v;
                  }else{
                    if(pin.isNotEmpty) {
                      pin = pin.substring(0, pin.length-1);
                      //print(pin.length);
                    }
                  }
                  if(pin.length <= 4 && widget.onPin != null) {
                    okPin(pin);
                    //print(pin);
                    //pin = '';
                  }
                });
              },
            ),
          ),
        ),

      ],
    );
  }

  Widget _dot(bool checked){
    return SizedBox(
      width: 7.w,
      child: Icon(
        checked ? Icons.circle:Icons.circle_outlined,
        color: checked ? BrandStyleConfig.primary : BrandStyleConfig.colorScheme.onPrimary,
        size: 19.sp,
      ),
    );
  }

  Future<void> okPin(String pin) async {
    await widget.onPin!(pin);
  }
}

