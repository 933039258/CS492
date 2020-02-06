import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Messageservice.dart';
import 'ServiceLocator.dart';
import './resume.dart';
import './predictor.dart';

class MyHomePage extends StatelessWidget {
  
  final String title;
  const MyHomePage({Key key, this.title}) : super(key: key);
  
  @override
   Widget build(BuildContext context) {
     
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: new Center(child: new Text(title, textAlign: TextAlign.center)),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.account_circle)),
              Tab(icon: Icon(Icons.assignment)),
              Tab(icon: Icon(Icons.help_outline)),
            ],
          ),
          // title: Text('Tabs Demo'),
        ),
        body: TabBarView(
          children: [
            home(context),
            Resume(),
            Predictor(),
          ],
        ),
      ),
    );
  }
}
  Widget home(BuildContext context){
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children:[
          placeholderRow(), 
          name(context),
          title(context),
          phone(context),
          web(context)
        
      ]);
      //body: CenteredPlaceholder(padding: 50)
    
  }

  Widget paddedPlaceholder(){
    return Padding(
              padding: EdgeInsets.all(20),
              child: SizedBox(
                child: Image.asset('assets/pz.png'),
              width:80,height:80)
              );
  }
  Widget placeholderRow(){
    return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            paddedPlaceholder()
        ]);
  }
  Widget name(BuildContext context){
    return Text('Peng Zhang',style: Theme.of(context).textTheme.title);
  }
  Widget title(BuildContext context){
    
    return Padding(
      padding: EdgeInsets.all(10),
      child:Text('Developer Extraordinaire',style: Theme.of(context).textTheme.subhead)
    ); 
  }

  Widget phone(BuildContext context){
    final TelAndSmsService _service = locator<TelAndSmsService>();
    final String number = "5419085555";
    
    return Padding(
      padding: EdgeInsets.all(10),
      child:InkWell(
        child: new Text('541 908 5555',style: Theme.of(context).textTheme.body2),
        onTap: () =>  _service.sendSms(number)
      )
    ); 
  }
  Widget web(BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:[
            ink(context),
            mail(context)
        ]     
    ); 
  }
  Widget ink(BuildContext context){
    return Padding(
      
      padding: EdgeInsets.all(20),
      child:
      InkWell(
        child: new Text('github.com/933039258',style: Theme.of(context).textTheme.body2),
        onTap: () => launch('https://github.com/933039258')
      )
      
    );
  }
  Widget mail(BuildContext context){
    final TelAndSmsService _service = locator<TelAndSmsService>();
    final String email  = "zhangpen@oregonstate.edu";
    return Padding(
      padding: EdgeInsets.all(20),
      
      child: InkWell(
        child: new Text('zhangpen@oregonstate.edu',style: Theme.of(context).textTheme.body2),
        onTap: () =>  _service.sendEmail(email)
      )
    ); 
  }




  