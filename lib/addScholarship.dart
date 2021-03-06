import 'package:coll_aid/fireflutter.dart';
import 'package:flutter/material.dart';

class AddScholarship extends StatefulWidget {
  const AddScholarship({ Key? key }) : super(key: key);

  @override
  _AddScholarshipState createState() => _AddScholarshipState();
}

class _AddScholarshipState extends State<AddScholarship> {

  String scholarshipName = '';
  String scholarshipHost = ''; 
  String link = ''; 
  String scholarshipDescription = ''; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add a Scholarship!'),),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
               Container(child: Image.network('https://images.unsplash.com/photo-1459257831348-f0cdd359235f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8bW9uZXl8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'), height: 275, width: 275.0,),       

              Container(
                width: 350,
                child: TextField(
                  onChanged: (val) {
                    setState(() {
                      scholarshipHost = val;
                    });
                  },
                  decoration: InputDecoration(
                    hintText: "Scholarship Host Name",
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
                      scholarshipName = val; 
                    });
                  },
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: "Scholarship Name",
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
                      scholarshipDescription = val; 
                    });
                  },
                  maxLines: 5,
                  obscureText: false,
                  decoration: InputDecoration(
                    
                    hintText: "Scholarship Description",
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
                    
                    hintText: "Link to scholarship.",
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
                  'Add Scholarship!',
                  style: TextStyle(fontSize: 30),
                ),
                onPressed: () {
                  createScholarship(scholarshipName, scholarshipHost, scholarshipDescription, link); 
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