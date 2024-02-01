import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CustomTextInput extends StatefulWidget {


   CustomTextInput({Key? key,this.onTextChange, required this.controller, this.maxlenth,this.maxLine, this.textInputType, this.textInputAction, required this.hint, this.icons, this.height, this.width, this.textsize, this.enabled, this.capital});
  final Function? onTextChange;
  final TextEditingController controller;
  final int? maxlenth;
  final int? maxLine;
  final double? textsize;
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;
  final String hint;
  final IconData? icons;
  final double? height;
  final double? width;
  final bool? enabled;
  final bool? capital;

  @override
  State<CustomTextInput> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextInput> {

  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? MediaQuery.of(context).size.width,
      height: widget.height ?? 50.h,
      padding: const EdgeInsets.only(left: 20, right: 5,),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: TextField(
        controller: widget.controller,
        keyboardType: widget.textInputType ?? TextInputType.text,
        inputFormatters: widget.textInputType != null ? widget.textInputType == TextInputType.number ? [FilteringTextInputFormatter.digitsOnly] : [] : [],
        maxLines: widget.maxLine ?? 1,
        textCapitalization: widget.capital !=null ? TextCapitalization.characters : TextCapitalization.none,
        maxLength: widget.maxlenth ?? 200,
        obscureText: false,
        enabled: widget.enabled ?? true,
        onChanged: (value)
        {
          if(widget.onTextChange!=null)
          {
            widget.onTextChange!(value);
          }
        },
        textInputAction: widget.textInputAction ?? TextInputAction.done,
        style: TextStyle(color: Colors.black,decoration: TextDecoration.none,fontSize: widget.textsize ?? 16.sp),
        decoration:widget.icons==null ? InputDecoration(
          border: InputBorder.none,
          //hintText: widget.hint,
          labelText: widget.hint,
          counterText: "",
          hintStyle:TextStyle(color:Colors.grey.shade300,decoration: TextDecoration.none,fontSize: widget.textsize ?? 16.sp),
        ) : InputDecoration(
          border: InputBorder.none,
          //hintText: widget.hint,
          labelText: widget.hint,
          counterText: "",
          //suffixIcon: widget.icons==null ? const SizedBox() : Icon(widget.icons,size: 25,color: Utils.getColor(ColorCode.hint_text)),
          suffixIcon: Icon(widget.icons,size: 25,color: Colors.black),
          hintStyle:TextStyle(color: Colors.grey.shade300,decoration: TextDecoration.none,fontSize: widget.textsize ?? 16.sp),
        ),
      ),
    );
  }
}
