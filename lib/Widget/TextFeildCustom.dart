import 'package:flutter/material.dart';


class TextFeildCustom extends StatelessWidget {
  TextEditingController? textEditingController;
  VoidCallback? onTap;
  bool prefix;
  final IconData? prefixIcon;
  final IconData? sufixIcon;
  final String? hint;

   TextFeildCustom({super.key,this.textEditingController,this.prefixIcon,this.sufixIcon,this.hint,this.onTap,
   this.prefix=true
   });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,

      decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),

      
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
        hintText: hint,
        labelText: hint,
        prefixIcon:prefix? Icon(prefixIcon):null,
        suffix: GestureDetector(
          onTap: onTap,
          child: Icon(sufixIcon,size: 20,)),
      ),
    );
  }
}