import 'package:flutter/material.dart';


class Resume extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children:[
          content(context)
         
      ]);
  }
}

Widget content(BuildContext context){
  return  CustomScrollView(
    shrinkWrap: true,
    slivers: <Widget>[
      new SliverPadding(
             padding: EdgeInsets.all(20.0),
              sliver: new SliverList(
                 delegate: new SliverChildListDelegate(
                   <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children:[
                        list1(context),
                        list1_2(context),
                        list1_3(context)
                        ]
                      )
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children:[
                        list2(context),
                        list2_1(context),
                        list2_2(context)
                        ]
                      )
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children:[
                        list2(context),
                        list2_1(context),
                        list2_2(context)
                        ]
                      )
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children:[
                        list2(context),
                        list2_1(context),
                        list2_2(context)
                        ]
                      )
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children:[
                        list2(context),
                        list2_1(context),
                        list2_2(context)
                        ]
                      )
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children:[
                        list2(context),
                        list2_1(context),
                        list2_2(context)
                        ]
                      )
                    ),
                   ],
                 ),
              ),
      )],
);

}

Widget list1(BuildContext context){
  return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children:[
      Text('Peng Zhang',style: Theme.of(context).textTheme.title),
   ]);
}
Widget list1_2(BuildContext context){
  return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children:[
      Text('zhangpen@oregonstate.edu',style: Theme.of(context).textTheme.body1)
   ]);
}
Widget list1_3(BuildContext context){
  return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children:[
      Text('https://github.com/933039258',style: Theme.of(context).textTheme.body1)
   ]);
}

Widget list2(BuildContext context){
  return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children:[
      Text('Software Developer Intern',style: Theme.of(context).textTheme.body2)
   ]);
}
Widget list2_1(BuildContext context){
  return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children:[
        Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          child:
            Text('E Corp',style: Theme.of(context).textTheme.body1),     
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(79, 0, 0, 0),
          child:
            Text('2016 - Present',style: Theme.of(context).textTheme.body1),    
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(79, 0, 0, 0),
          child:
            Text('Corvallis, OR',style: Theme.of(context).textTheme.body1),     
        )
        ]
   );
}
Widget list2_2(BuildContext context){
   return Wrap(
     spacing: 2,
     runSpacing: 5,
     children: <Widget>[
       Text('Lorenm iposim dolow siot ametg, consectetue adipsicing edtv, asubvhy do eignt emprio dinciasiwn iung becre aert dormen amnbh Ujs nnwabbv jasdgf bsefv',style: Theme.of(context).textTheme.body1)
     ],
   );
}


