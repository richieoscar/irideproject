import 'package:flutter/material.dart';
import 'package:irideproject/shared/styles/styles.dart';

class CustomDailog extends StatefulWidget {
  const CustomDailog({ Key? key }) : super(key: key);

  @override
  _CustomDailogState createState() => _CustomDailogState();
  
}

class _CustomDailogState extends State<CustomDailog> {
  @override
  Widget build(BuildContext context) {
  
    return showSuccessCardAdded();
  }

  Widget showSuccessCardAdded(){
    return  Dialog(
        backgroundColor: Colors.transparent,
        elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Icon(Icons.verified, color: Colors.green, size:100),
                  SizedBox(height: 25),
                  Text("Success", style:AppStyle.boldText),
                  SizedBox(height:10),
                  Text("Your card has been saved successfuly", style: AppStyle.faintText),
                  SizedBox(height:15),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      onPressed: (){},
                    child: Text("Continue",style: AppStyle.normalText,),
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),
                    ),
                  )
                ],
              ),
            ),
          ),
        
        );
    
    
  }

  
}