import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';

  final controllerUsername = TextEditingController();
  final controllerClientName = TextEditingController();
  final controllerProjectRate = TextEditingController();
  
  DateTime dateTime = DateTime.now();
  DateTime dateTime2 = DateTime.now();
  final ImagePicker picker = ImagePicker();
  String? selectedValue;

 @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    controllerUsername.dispose();
    controllerClientName.dispose();
    controllerProjectRate.dispose();
    //super.dispose();
  }


  Future<DateTime>? myShowTimePicker(String i,BuildContext context) {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2000),
            lastDate: DateTime(2060))
        .then((value) {
          return value;
    });
  }
  

  Future<void> getLostData(picker) async {
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    showToast(image!.toString());
  }
  
  void showToast(text) {
    Fluttertoast.showToast(
        msg: text,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  

