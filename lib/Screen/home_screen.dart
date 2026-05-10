import 'package:flutter/material.dart';

import '../Model/people_model.dart';
import '../data.dart';
import '../pages/person_detail.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
          itemCount: people.length,
          itemBuilder: (context, index) {
            return buildChartItem(context,
              name: people[index]["name"],
              image: people[index]["image"],
              job: people[index]["job"],
              person: Person.fromJson(people[index]));
          },



        )
      ),
    );
  }

  ListTile buildChartItem(BuildContext context,{required String name, required String image, required String job,required Person person}) {
    return ListTile(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(image),),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [Text("12:40"),
                Text("14.5K")
              ],
            ),
            title: Text(name,style: TextStyle(fontSize: 18,fontWeight: FontWeight(600))),
            subtitle: Text(job),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> PersonDetail(person)));
            },
          );
  }
}
