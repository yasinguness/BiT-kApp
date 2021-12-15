import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      

      body:SafeArea(

        child: SingleChildScrollView(

          child: Container(
            
            
            padding: EdgeInsets.fromLTRB(20, 60.0,20.0,20.0),
            decoration: new BoxDecoration(
                color: Color(0xff1f1f39), 
                ),
                
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                
                  children: [
                    Text('Giriş Yap',style: TextStyle(
                  fontFamily:'Poppins',
                  color: Color(0xffffffff),
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal ,),
                  
                  ),
                  SizedBox(height: 32.0,),
              
                  Row(
              
                    children: [
                      Text('E-mail Adresi',style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xff858597),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                      ),
                      )
                    ],
                  ),
                  TextFormField(
                    
                      decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)), ),
                  ),
                  SizedBox(height: 16.0,),
                  Row(
                   // mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     Text('Şifre',style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xff858597),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        
                      
                      ),
                      )
                   ],
                  ),
            
            SizedBox(height: 16.0,),
              
                  TextFormField(
              
                      decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)), ),
                  ),
                  TextButton(onPressed: (){},child: 
                  Text('Şifremi Unuttum',style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xffb8b8d2),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          
                          
                          ),
                      ),
                    
                  
                  ),
                  Container(
                    
                    height: 50,
                    width: 250,
                    decoration: BoxDecoration(
                        color: Colors.blue, borderRadius: BorderRadius.circular(20)),
                    child: ElevatedButton(
                      onPressed: () {
              
                      },
                      
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
              
                  ),
                  SizedBox(height: 8.0,),
                    Container(
            padding: EdgeInsets.all(10),
            child: Center(
          child: RichText(
            text: TextSpan(
                text: 'Hesabınız yok mu ?',
                style: TextStyle(
                    color: Colors.white, fontSize: 15),
                children: <TextSpan>[
                  TextSpan(text: ' Giriş Yap',
                      style: TextStyle(
                          color: Colors.blueAccent, fontSize: 15),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // navigate to desired screen
                        }
                  )
                ]
            ),
          ),
            )
              ),
            SizedBox(height: 8.0),
              
            Text('Veya giriş yapın' ,style: TextStyle(
                          color: Colors.white24, fontSize: 15),),
              
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
              
                              children: [Column(
                              //mainAxisAlignment: MainAxisAlignment.center,
                              children: [IconButton(onPressed: (){}, icon: Icon(Icons.facebook,color:Colors.blue,size: 30,) )],
                            ),
                            SizedBox(width:10.0,),
                            Column(
                              //mainAxisAlignment: MainAxisAlignment.center,
                              children: [IconButton(onPressed: (){}, icon: Icon(Icons.email,color: Colors.white,size: 30,) )],
                            )],),
                          )
                  
                  ],
                )
                  
          ),
        ),
      ),

    );
  }
}
