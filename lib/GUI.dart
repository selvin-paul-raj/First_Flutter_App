import 'package:flutter/material.dart';



class GUI extends StatefulWidget {
  const GUI({super.key});

  @override
  State<GUI> createState() => _GUIState();
}

class _GUIState extends State<GUI> {
  TextEditingController textfield1Controller=TextEditingController();
  Color customTextColor=Colors.black;
  double customFontSize=14;
  FontWeight customFontWeight=FontWeight.normal;
  bool isBold=false;



  @override
  void initState() {
    super.initState();
    // TODO: implement initState
    textfield1Controller.text="Sample Text";
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text("GUI Example"),centerTitle: true,),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left:20,right:20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Output
              const SizedBox(height: 30,),
              Container(
               width: double.infinity,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(5),
                 border: Border.all(color: Colors.green,width: 2)
               ),
               child: Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Column(
                   mainAxisSize: MainAxisSize.min,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     const Text("Output",style: TextStyle(color: Colors.green,fontWeight: FontWeight.w500)),
                     const SizedBox(height:5,),
                     Text(textfield1Controller.text,style: TextStyle(color: customTextColor,fontSize: customFontSize,fontWeight: customFontWeight),),
                     const SizedBox(height: 30,),
                   ],

                 ),
               ),
             ),

              const SizedBox(height: 30,),

              // Input
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.blue,width: 2)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text("Input",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w500),),
                      const SizedBox(height:5,),
                      Container(
                          height: 150,

                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: TextField(
                              controller: textfield1Controller,
                              style: TextStyle(fontSize: 14),
                              decoration: InputDecoration(border: InputBorder.none,),
                              onChanged: (value) {
                                setState(() {

                                });
                              },


                            ),
                          )),
                      const SizedBox(height: 10,),

                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30,),

              // Operation
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex:1,
                    child: Container(

                        child: Text("Selected Font Color",style: TextStyle(color: Colors.black, fontSize: 13),)),
                  ),

                  Expanded(
                    flex:1,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color:Colors.black),
                      ),
                      width: 160,
                      height: 45,
                      child: Center(
                        child: DropdownButton<Color>(

                          style: TextStyle(fontWeight: FontWeight.normal,fontSize: 12,color: Colors.black, ),
                          dropdownColor: Colors.white,

                          iconSize: 0,
                          value: customTextColor,
                          onChanged: (Color? newValue) {
                            setState(() {
                              customTextColor = newValue!;
                            });
                          },
                          underline: Container(
                            color: Colors.white,
                          ),
                          alignment: Alignment.centerRight,
                          items: [
                            DropdownMenuItem(value: Colors.black,child: Center(child: Text("Black"))),
                            DropdownMenuItem(value: Colors.red,child: Center(child: Text("Red"))),
                            DropdownMenuItem(value: Colors.blue,child: Center(child: Text("Blue"))),
                            DropdownMenuItem(value: Colors.green,child: Center(child: Text("Green"))),
                            DropdownMenuItem(value: Colors.yellow,child: Center(child: Text("Yellow"))),
                            DropdownMenuItem(value: Colors.orange,child: Center(child: Text("Orange"))),
                            DropdownMenuItem(value: Colors.pink,child: Center(child: Text("Pink"))),

                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex:1,
                    child: Container(

                        child: Text("Selected Font Size",style: TextStyle(color: Colors.black, fontSize: 13),)),
                  ),

                  Expanded(
                    flex:1,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color:Colors.black),
                      ),
                      width: 160,
                      height: 45,
                      child: Center(
                        child: DropdownButton<double>(

                          style: TextStyle(fontWeight: FontWeight.normal,fontSize: 12,color: Colors.black, ),
                          dropdownColor: Colors.white,

                          iconSize: 0,
                          value: customFontSize,
                          onChanged: (double? newValue) {
                            setState(() {
                              customFontSize = newValue!;
                            });
                          },
                          underline: Container(
                            color: Colors.white,
                          ),
                          alignment: Alignment.centerRight,
                          items: [
                            DropdownMenuItem(value: 10.00,child: Center(child: Text("10"))),
                            DropdownMenuItem(value: 12.00,child: Center(child: Text("12"))),
                            DropdownMenuItem(value: 14.00,child: Center(child: Text("14"))),
                            DropdownMenuItem(value: 16.00,child: Center(child: Text("16"))),
                            DropdownMenuItem(value: 18.00,child: Center(child: Text("18"))),
                            DropdownMenuItem(value: 20.00,child: Center(child: Text("20"))),
                            DropdownMenuItem(value: 30.00,child: Center(child: Text("30"))),

                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15,),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: const Text("BOLD"),
                  ),
                  Expanded(
                    flex: 1,
                    child: Switch(
                      activeColor: Colors.black,
                      hoverColor: Colors.black,
                      value: isBold,
                      onChanged: (value) {
                        isBold = value;

                        if(isBold==true){
                          customFontWeight=FontWeight.bold;
                        }
                        else{
                          customFontWeight=FontWeight.normal;
                        }
                        setState(() {


                        });
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50,),

              //Submit
              Center(
                child: InkWell(
                  onTap: (){
                    customFontWeight=FontWeight.normal;
                    customFontSize=14;
                    textfield1Controller.text="Sample Text";
                    customTextColor=Colors.black;
                    setState(() {

                    });
                  },
                child:Container(
                  width:205,
                  height: 45,

                  decoration: BoxDecoration(
                      color: Colors.red,
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: Center(
                    child: Text(
                      "RESET",style: TextStyle(color: Colors.white,fontSize: 16),
                    ),
                  ),
                )
                ),
              ),
              const SizedBox(height: 30,),
            ],
          ),
        ),
      ),
    );
  }
}



