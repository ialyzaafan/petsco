import 'package:flutter/material.dart';
import 'package:petsco/models/NotificationModel.dart';
import 'package:petsco/style.dart' as styles;


class Notifications extends StatelessWidget {
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: styles.mainColor,
      appBar: AppBar(
        
        iconTheme: IconThemeData(
        color: Colors.white, //change your color here
                                ),
        title: Text("Notifications",style: styles.mediumAppBarWhiteTextStyle,),
        centerTitle: true,
        backgroundColor: styles.mainColor,
        elevation: 0,
      ),
      body: Container(
        child: NotificationCardBuilder(notifcations: notifications),
        padding: EdgeInsets.only(top: 29,left: 12,bottom: 12,right: 12),
        decoration: BoxDecoration(
          color: Color(0xffF3FAEE),
          borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0),topRight: Radius.circular(30.0)),
        ),
      ),
    ) ;
  }
}

class NotificationBox extends StatelessWidget {
  final String title;
  final String desc;
  NotificationBox(this.title,this.desc);
    @override
  Widget build(BuildContext context) {
        return Container(
          width: MediaQuery.of(context).size.width,
          height: 160.0,
          color: Colors.transparent,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13.0),

            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                Text(title,style: styles.mediumSecondryColor,),
                SizedBox(height: 10,),
                Opacity(
                  opacity: 0.5,
                  child: Text(desc,style: styles.mediumSecondryColor,
                          overflow: TextOverflow.ellipsis,maxLines: 3,)),

              ],),
            ),
          ),
        ) ;
          }
}




class NotificationCardBuilder extends StatelessWidget {
  final List<NotificationModel> notifcations ;
NotificationCardBuilder({
  @required this.notifcations
});
    @override
  Widget build(BuildContext context) {
    return new ListView.builder
  (   
      scrollDirection: Axis.vertical,
      itemCount: notifcations.length,
      itemBuilder: (BuildContext ctxt, int index) {
       return new NotificationBox(notifcations[index].title, notifcations[index].description);
      }
  );
  }
}