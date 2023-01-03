import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:create_new_project/config.dart';
class HomePagePC extends StatefulWidget {
  const HomePagePC({super.key});

  @override
  State<HomePagePC> createState() => _HomePagePCState();
}

class _HomePagePCState extends State<HomePagePC> {


  // DateTime _dateTime = DateTime.now();
  // DateTime _dateTime2 = DateTime.now();
  // final ImagePicker picker = ImagePicker();

  // void _showTimePicker(String i) {
  //   showDatePicker(
  //           context: context,
  //           initialDate: DateTime.now(),
  //           firstDate: DateTime(2000),
  //           lastDate: DateTime(2060))
  //       .then((value) {
  //     setState(() {
  //       if (i == 'start') {
  //         _dateTime = value!;
  //       } else
  //         _dateTime2 = value!;
  //     });
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      padding: EdgeInsets.all(50),
      //Tổng trang
      child: Column(
        children: [
          //Tiêu đề
          DefaultTextStyle(
            style: TextStyle(color: Color.fromRGBO(30, 47, 101, 1)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Project Create',
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
                  Row(
                    children: [
                      Icon(Icons.home),
                      Text(' / Apps / '),
                      Text('project')
                    ],
                  ),
                ]),
          ),
          // Main Content
          Column(
            children: [
              Container(
                //color: Color.fromRGBO(30, 47, 101, 1),
                margin: EdgeInsets.only(top: 35),
                padding: EdgeInsets.all(35),
                width: 1500,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                // pj Name
                child: Expanded(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Project Title',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(30, 47, 101, 1),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10, bottom: 10),
                          child: TextField(
                            controller: controllerUsername,
                            obscureText: false,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Project Name *',
                            ),
                          ),
                        ),
                        Text('Client Name',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(30, 47, 101, 1))),
                        Container(
                          margin: EdgeInsets.only(top: 10, bottom: 10),
                          child: TextField(
                            controller: controllerClientName,
                            obscureText: false,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Name Client or Company Name *',
                            ),
                          ),
                        ),

                        // Project Rate
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Project Rate',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromRGBO(30, 47, 101, 1))),
                                  Container(
                                    margin:
                                        EdgeInsets.only(top: 10, bottom: 10),
                                    child: TextField(
                                      controller: controllerProjectRate,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText:
                                            'Name Client or Company Name *',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // Project Type
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.only(left: 25),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Project Type',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Color.fromRGBO(
                                                30, 47, 101, 1))),
                                    Container(
                                      width: 430,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(
                                            color: Colors.grey,
                                            style: BorderStyle.solid,
                                            width: 0.80),
                                      ),
                                      margin:
                                          EdgeInsets.only(top: 10, bottom: 10),
                                      child: DropdownButtonFormField(
                                        items: const [
                                          DropdownMenuItem(
                                              child: Text('Hourly'),
                                              value: "Hourly"),
                                          DropdownMenuItem(
                                              child: Text('Fix Price'),
                                              value: "Fix Price")
                                        ],
                                        value: selectedValue,
                                        onChanged: (value) {
                                        setState(() {});
                                        },
                                        isExpanded: true,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),

                            //Priority
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.only(left: 25),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Priority',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Color.fromRGBO(
                                                30, 47, 101, 1))),
                                    Container(
                                      width: 430,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(
                                            color: Colors.grey,
                                            style: BorderStyle.solid,
                                            width: 0.80),
                                      ),
                                      margin:
                                          EdgeInsets.only(top: 10, bottom: 10),
                                      child: DropdownButtonFormField(
                                        items: const [
                                          DropdownMenuItem(
                                              child: Text('Low'), value: "Low"),
                                          DropdownMenuItem(
                                              child: Text('Medium'),
                                              value: "Medium"),
                                          DropdownMenuItem(
                                              child: Text('High'),
                                              value: " High"),
                                          DropdownMenuItem(
                                              child: Text('Urgent'),
                                              value: " Urgent"),
                                        ],
                                        value: selectedValue,
                                        onChanged: (value) {
                                          setState(() {});
                                        },
                                        isExpanded: true,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        // Project Size
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Project Size',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromRGBO(30, 47, 101, 1))),
                                  Container(
                                    width: 460,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(
                                          color: Colors.grey,
                                          style: BorderStyle.solid,
                                          width: 0.80),
                                    ),
                                    margin:
                                        EdgeInsets.only(top: 10, bottom: 10),
                                    child: DropdownButtonFormField(
                                      items: const [
                                        DropdownMenuItem(
                                            child: Text('Small'),
                                            value: "Small"),
                                        DropdownMenuItem(
                                            child: Text('Medium'),
                                            value: "Medium"),
                                        DropdownMenuItem(
                                            child: Text('Big'), value: " Big"),
                                      ],
                                      value: selectedValue,
                                      onChanged: (value) {
                                        setState(() {});
                                      },
                                      isExpanded: true,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            // Starting date
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.only(left: 25),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Starting date',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Color.fromRGBO(
                                                30, 47, 101, 1))),
                                    Container(
                                      width: 430,
                                      height: 52,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(
                                            color: Colors.grey,
                                            style: BorderStyle.solid,
                                            width: 0.80),
                                      ),
                                      margin:
                                          EdgeInsets.only(top: 10, bottom: 10),
                                      child: TextButton(
                                          onPressed: () {
                                            _showTimePicker('start');
                                          },
                                          child: Text(
                                            DateFormat('dd/MM/yyyy')
                                                .format(dateTime)
                                                .toString(),
                                            style: TextStyle(fontSize: 16),
                                          )),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            //Ending date
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.only(left: 25),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Ending date',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Color.fromRGBO(
                                                30, 47, 101, 1))),
                                    Container(
                                      width: 430,
                                      height: 52,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(
                                            color: Colors.grey,
                                            style: BorderStyle.solid,
                                            width: 0.80),
                                      ),
                                      margin:
                                          EdgeInsets.only(top: 10, bottom: 10),
                                      child: TextButton(
                                          onPressed: () {
                                            _showTimePicker('end');
                                          },
                                          child: Text(
                                            DateFormat('dd/MM/yyyy')
                                                .format(dateTime2)
                                                .toString(),
                                            style: TextStyle(fontSize: 16),
                                          )),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            // end Date
                          ],
                        ),
                        //Text Form Field
                        Text('Enter Some Details',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(30, 47, 101, 1))),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                                color: Colors.grey,
                                style: BorderStyle.solid,
                                width: 0.80),
                          ),
                          margin: EdgeInsets.only(top: 10, bottom: 10),
                          child: TextFormField(
                            textAlign: TextAlign.center,
                            minLines: 4,
                            maxLines: null,
                            keyboardType: TextInputType.multiline,
                            decoration: InputDecoration(
                                hintText: 'Input Some text here'),
                          ),
                        ),
                        //Upload Field
                        DefaultTextStyle(
                          style:
                              TextStyle(color: Color.fromRGBO(30, 47, 101, 1)),
                          child: Container(
                            margin: EdgeInsets.only(top: 20, bottom: 20),
                            child: DottedBorder(
                              color: Color.fromRGBO(30, 47, 101, 1),
                              dashPattern: [5, 5],
                              strokeWidth: 2,
                              borderType: BorderType.RRect,
                              radius: Radius.circular(20),
                              child: Container(
                                width: 1400,
                                height: 200,
                                child: TextButton(
                                    onPressed: () async {
                                      getLostData(picker);
                                    },
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.cloud_upload_outlined,
                                          size: 30,
                                        ),
                                        Text(
                                          'Drop files here or click to upload.',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          '(This is just a demo dropzone. Selected files are not actually uploaded.)',
                                          textAlign: TextAlign.center,
                                        )
                                      ],
                                    )),
                              ),
                            ),
                          ),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 20),
                              width: 80,
                              height: 30,
                              child: TextButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(
                                      Color.fromRGBO(234, 144, 100, 1)),
                                  foregroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.white),
                                ),
                                onPressed: () {
                                  
                                },
                                child: Text(
                                  'ADD',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 20),
                              width: 80,
                              height: 30,
                              child: TextButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStatePropertyAll(Colors.red),
                                  foregroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.white),
                                ),
                                onPressed: () {},
                                child: Text('Cancel'),
                              ),
                            )
                          ],
                        )
                      ]),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _showTimePicker(String i) {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2000),
            lastDate: DateTime(2060))
        .then((value) {
      setState(() {
        if (i == 'start') {
          dateTime = value!;
        } else
          dateTime2 = value!;
      });
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
}
