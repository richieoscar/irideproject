import 'package:flutter/material.dart';
import 'package:irideproject/shared/styles/colors.dart';
import 'package:irideproject/shared/styles/styles.dart';

class Rating extends StatefulWidget {
  const Rating({ Key? key }) : super(key: key);

  @override
  _RatingState createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  int _totalPrice = 0;
  Color? _noTipColor = primaryColor;
  Color? _tipColor2 = inactive;
   Color? _tipColor4 = inactive;
    Color? _tipColor8 = inactive;
     Color? _tipColor12 = inactive;
     Color? _ratingColor = ratingInactive;
      Color? _ratingColor1 = ratingInactive;
       Color? _ratingColor2 = ratingInactive;
        Color? _ratingColor3 = ratingInactive;
         Color? _ratingColor4 = ratingInactive;

        void show(BuildContext context){
          showBottomSheet(
            elevation: 10,
            shape: RoundedRectangleBorder(
              
              borderRadius: BorderRadius.circular(10)
            ),
            context: context, builder:(context){
            return ratingWidget(context);
          });
        }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.transparent,
        body: Center(
          child: ElevatedButton(onPressed: ()=> show(context), child:Text("lick")
          
   ),
        ));
  }

  Container ratingWidget(BuildContext context) {
    return Container(
          child: Column(
    children: [
      SizedBox(height: 40,),
      priceHeader("\$"+_totalPrice.toString()),
      SizedBox(height: 10),
      Text("How was your trip?" ,style:AppStyle.normalBlackText),
      SizedBox(height: 10),
      ratingBar(),
      SizedBox(height: 15),
      tipOption(),
      SizedBox(height: 30,),
      listTile("Details", "View the Details of the trip", Icon(Icons.details, color: Colors.grey[500],)),
      listTile("Refer to Friends", "Invite your friends", Icon(Icons.share, color: Colors.grey[500],)),
      
      Align(
        
        alignment:Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical:20),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height:40,
            child: ElevatedButton(
            
              style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
                
                backgroundColor: MaterialStateProperty.all(primaryColor),
              ),
              onPressed: (){}, child: Text("Continue")),
          ),
        ))
    ],
  ));
  }

  Widget ratingBar() {
    return Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  _ratingColor = yellow;
                });
              
            }, 
            icon: Icon(Icons.star,size: 30, color:_ratingColor)
            ),
            IconButton(onPressed: () {
              setState(() {
                 _ratingColor1 = yellow;
              });
             
            }, icon: Icon(Icons.star, size: 30, color:_ratingColor1)),
            IconButton(onPressed: () {
              setState(() {
                _ratingColor2 = yellow;
              });
            }, icon: Icon(Icons.star, size: 30, color: _ratingColor2,)),
            IconButton(onPressed: () {
              setState(() {
                 _ratingColor3 = yellow;
              });
             

            }, icon: Icon(Icons.star, size: 30, color:_ratingColor3)),
            IconButton(onPressed: () {
              setState(() {
                 _ratingColor4 = yellow;
              });
             
            }, icon: Icon(Icons.star, size: 30, color:_ratingColor4,)),
          ],
        ),
      );
  }

  Widget listTile(String title, String subtitle, Icon leading) {
    return GestureDetector(
      onTap: (){},
      child: Container(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    leading,
                    SizedBox(width: 15,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: AppStyle.mediumBoldText,
                        ),
                        SizedBox(height:4),
                        Text(
                          subtitle,
                          style: AppStyle.faintText,
                        )
                      ],
                    )
                  ],
                ),
    
                Icon(Icons.arrow_forward_ios, size: 15,),
                
                
              ],
            ),
          ),
        ),
    );
  }

  Container tipOption() {
    return Container(
        child: Row(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: (){
                setState(() {
                  _totalPrice = 0;
                  _noTipColor = primaryColor;
                  _tipColor2 = inactive;
                _tipColor4 = inactive;
                _tipColor8 = inactive;
                _tipColor12 =inactive;
                });
              },
              child: Container(
                  width: 60,
                  decoration: BoxDecoration(
                    color: _noTipColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  
                    child:  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(child: Text("No Tip", style:AppStyle.smallWhiteText)),
                    ),
                    
                  ),
            ),
                SizedBox(width:10),
            GestureDetector(
              onTap: (){
                setState(() {
                  _totalPrice = 2;
                  _tipColor2= primaryColor;
                  _tipColor12 = inactive;
                _tipColor4 = inactive;
                _tipColor8 = inactive;
                _noTipColor = inactive;

                });
              },
              child: Container(
                  width: 50,
                  decoration: BoxDecoration(
                    color: _tipColor2,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(child: Text("\$2")),
                  )),
            ),
                SizedBox(width: 10),
            GestureDetector(
              onTap: (){
                setState(() {
                  _totalPrice = 4;
                  _tipColor4 = primaryColor;
                  _tipColor2 = inactive;
                _tipColor12 = inactive;
                _tipColor8 = inactive;
                _noTipColor = inactive;
                });
              },
              child: Container(
                  width: 50,
                  decoration: BoxDecoration(
                    color: _tipColor4,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(child: Text("\$4")),
                  )),
            ),
                SizedBox(width: 10),
            GestureDetector(
              onTap: (){
                setState(() {
                  _totalPrice = 8;
                  _tipColor8 = primaryColor;
                  _tipColor2 = inactive;
                _tipColor4 = inactive;
                _tipColor12 = inactive;
                _noTipColor = inactive;
                });
              },
              child: Container(
                  width: 50,
                  decoration: BoxDecoration(
                    color: _tipColor8,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(child: Text("\$8")),
                  )),
            ),
                SizedBox(width: 10),
            GestureDetector(
              onTap: (){
                setState(() {
                  _totalPrice = 12;
                  _tipColor12 = primaryColor;
                  _tipColor2 = inactive;
                  _tipColor4 = inactive;
                  _tipColor8 = inactive;
                  _noTipColor = inactive;

                });
              },
              child: Container(
                  width: 50,
                  decoration: BoxDecoration(
                    color: _tipColor12,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(child: Text("\$12")),
                  )),
            ),
          ],
        ),
      );
  }

   Widget priceHeader(String price) {
    return Text(price, style: AppStyle.boldText);
  }



}