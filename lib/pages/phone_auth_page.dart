import 'package:bitik_mobile_app/models/user_model.dart';
import 'package:bitik_mobile_app/pages/home/page/home_page.dart';
import 'package:bitik_mobile_app/services/firebase_auth_service.dart';
import 'package:bitik_mobile_app/view_models/user_view_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class PhoneAuthPage extends StatefulWidget {
  PhoneAuthPage({Key? key}) : super(key: key);

  @override
  _PhoneAuthPageState createState() => _PhoneAuthPageState();
}

class _PhoneAuthPageState extends State<PhoneAuthPage> {
  
  @override
  Widget build(BuildContext context) {
    final _userModel = Provider.of<UserViewModel>(context);
    

  
    return Scaffold(
      appBar: AppBar(actions: [ 
        TextButton(
          onPressed:()=> _signOut(context)  , 
          child: Text('Çıkış Yap'),
          style: TextButton.styleFrom(primary: Colors.white),
          ),

      ],title: Text('AuthPage'),) ,
      body: Column(
        children: [Form(child: TextFormField(
          keyboardType: TextInputType.number,
          
          obscureText: true,
          decoration: InputDecoration(labelText: "Kodu Girin",contentPadding: EdgeInsets.symmetric(vertical: 15,horizontal: 10),suffixIcon: Padding(child: FaIcon(FontAwesomeIcons.eye,size: 15,
          )
          ,
          padding: EdgeInsets.only(top: 15,left: 15),
          )
          ),
        )
        ,),
        ElevatedButton(
                  onPressed: ()async{
                    signInWithPhoneNumber();
                    
                    
                    //await Navigator.push(context, MaterialPageRoute(builder: (context) => PhoneAuthPage(),));
                    
                  }  ,
                  child: Text(
                    'Doğrula',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),)
        ],
      ),
      
    );
  }

 Future<bool> _signOut(BuildContext context) async {
    final _userModel=Provider.of<UserViewModel>(context,listen: false);
    bool result= await _userModel.signOut();
    return result;
 }

  void signInWithPhoneNumber() async{
    final _fireauth = Provider.of<FirebaseAuthService>(context);
    _fireauth.signInWithPhoneNumber();
  }
  
}