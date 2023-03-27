import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vp18_bio_app1/extensions/context_extension.dart';
import 'package:vp18_bio_app1/widgets/bio_card.dart';
import 'package:vp18_bio_app1/widgets/bio_container.dart';

class BioScreen extends StatelessWidget {
  const BioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('BIO',),
        centerTitle: true,
      ),
      body: Container(
        // alignment: Alignment.center,
        // height: double.infinity,
        // width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd,
            colors: [
              Colors.pink.shade100,
              Colors.blue.shade100,

            ]
          )
        ),
        child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage('https://www.pngitem.com/pimgs/m/294-2947257_interface-icons-user-avatar-profile-user-avatar-png.png'
              ),

            ),
            SizedBox(height: 10,),
            Text('User Name',
              style: GoogleFonts.cairo(
                fontSize: 20,
                fontWeight: FontWeight.bold

              ),
            ),
            Text('Flutter Course',
              style: GoogleFonts.cairo(
                color: Colors.black45,
                height: 1

              ),
            ),
           const Divider(
              thickness: 1,
              color: Colors.black26,
              height: 50,
              endIndent: 30,
              indent: 30,


            ),
            BioCard(
              leadingIcon: Icons.email,
              titttel: 'Email',
              subTittele: 'email@app.com',
              trailingIcon: Icons.send,
              marginButtom: 10,
              onPressed: (){
                print('send Email');
              context.showSnackBar(message: 'send email',error: false);


              },
            ),
            //  //***********************
            // BioCard(leadingIcon: Icons.phone_android, titttel: 'phone', subTittele: '970-1234-567',trailingIcon: Icons.call,onPressed: (){
            //   print('call phone');
            // },)
            // //*************

           BioContainer(leading: Icons.phone_android, title: 'phone', subTitle: '+970-59-2466538', trailing: Icons.call, onPressed: (){print('call phone');context.showSnackBar(message: 'call phone',error: false);}),

            Spacer(),
            Text('Flutter Course - 2022-18',

              ),
            //1)SizedBox(height: 10),
           //2)بنعمل كونتير وبنحط فيه مارجن
           //طرق نعمل ازاحة للعنصر نعمل

          ],

        ),
        

      ),

    );
  }

}



