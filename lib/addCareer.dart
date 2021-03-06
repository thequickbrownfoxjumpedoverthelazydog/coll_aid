import 'package:coll_aid/fireflutter.dart';
import 'package:flutter/material.dart';

class AddCareer extends StatefulWidget {
  const AddCareer({ Key? key }) : super(key: key);

  @override
  _AddCareerState createState() => _AddCareerState();
}

class _AddCareerState extends State<AddCareer> {
  String positionName = '';
  String companyName = ''; 
  String positionDescription = ''; 
  String link = ''; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add an Internship or Job!'),),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(child: Image.network('https://cdn.pixabay.com/photo/2017/10/17/10/05/job-2860035_960_720.jpg'), height: 275, width: 275.0,),           
              
              Container(
                width: 350,
                child: TextField(
                  onChanged: (val) {
                    setState(() {
                      companyName = val;
                    });
                  },
                  decoration: InputDecoration(
                    hintText: "Company Name",
                    contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                   border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)))
                  ),
              ),
      
              SizedBox(height: 10.0),
      
              Container(
                width: 350,
                child: TextField(
                  onChanged: (val){
                    setState(() {
                      positionName = val; 
                    });
                  },
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: "Position Name",
                    contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                   border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)))
                  ),
              ),
              SizedBox(height: 10.0),
      
              Container(
                width: 350,
                child: TextField(
                  onChanged: (val){
                    setState(() {
                      positionDescription = val; 
                    });
                  },
                  maxLines: 5,
                  obscureText: false,
                  decoration: InputDecoration(
                    
                    hintText: "Position Description",
                    contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                   border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)))
                  ),
              ),
              SizedBox(height: 10), 
              Container(
                width: 350,
                child: TextField(
                  onChanged: (val){
                    setState(() {
                      link = val; 
                    });
                  },
                  obscureText: false,
                  decoration: InputDecoration(
                    
                    hintText: "Link to position! LinkedIn, Indeed, etc. ",
                    contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                   border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)))
                  ),
              ),
      
              SizedBox(height: 10.0,),
              //flutter run --no-sound-null-safety
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                child: const Text(
                  'Create Position!',
                  style: TextStyle(fontSize: 30),
                ),
                onPressed: () {
                  createCareer(positionName, companyName, positionDescription, link); 
                  Navigator.pop(context); 
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}