import 'package:flutter/material.dart';

import '../Model/people_model.dart';
class PersonDetail extends StatefulWidget {
  const PersonDetail(this.person, {super.key});
  final Person person;


  @override
  State<PersonDetail> createState() => _PersonDetailState();
}

class _PersonDetailState extends State<PersonDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Person Detail"),),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20,),
            CircleAvatar(
              backgroundImage: NetworkImage(widget.person.image),
              radius: 50,
            ),
            Text(widget.person.name),
            Text(widget.person.job),
            Text(widget.person.age.toString()),
        
          ],
        ),
      ),
    );
  }
}
