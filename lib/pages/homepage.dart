import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Phonkrit App"),
      ),
      body: ListView(
        children: [
          profile(),
          firstname(),
          nickname(),
          birthday(),
          topic(),
          picture(),
        ],
      ),
    );
  }

  Widget picture() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SizedBox(
            width: 200,
            height: 200,
            child:Container (
              decoration: BoxDecoration(
                image:DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage('https://lh3.googleusercontent.com/proxy/4-5bAZl_3BhkqTlyrHPSIvXXO3i4-9w0gZQt5Saf5pqYTWsdI0gemvhjBnLdWlFrCZgiZHd1RelpcMTLY9YCPmNXFmTaq1FkifU'),
                ) 
              ),
            ),
          ),
    );
  }

  Container profile() {
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: CircleAvatar(
            radius: 70,
            backgroundImage: AssetImage('images/kk.jpg'),
          ),
    );
  }


  Row firstname() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         FaIcon(
              FontAwesomeIcons.user,
              color: Colors.blue,
            ),
        Container(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Text('พลกฤต ยกพ่วง',
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue[800],
              ),),)
      ],
    );
  }

  Widget topic() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Divider(
                thickness: 2,
                color: Colors.grey[600],
              ),
            ),
          ),
          const Text('รถที่ชอบ',
            style: TextStyle(
              
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Divider(
                thickness: 2,
                color: Colors.grey[600],
              ),
            ),
          ),  
        ],
      ),
    );
  }

  Row birthday() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        
          FaIcon(
              FontAwesomeIcons.birthdayCake,
              color: Colors.blue,
            ),
        
        Container(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Text('5/11/2543',
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue[800],
              ),),)
      ],
    );
  }

  Row nickname() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(
              FontAwesomeIcons.idCard,
              color: Colors.blue,
            ),
        Container(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Text('ชื่อเล่น เอ็กซ์',
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue[800],
              ),),)
      ],
    );
  }

  
}