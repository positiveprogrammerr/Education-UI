import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:education_ui/widgets/video_section.dart';
import 'package:education_ui/widgets/description_section.dart';

class CourseScreen extends StatefulWidget {
  final String img;
  const CourseScreen(this.img,{super.key});

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  bool isVideosection = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(widget.img,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        letterSpacing: 1),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right:10.0),
            child: Icon(Icons.notifications,size: 28,color: Color(0xFF674AEF),),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: const Color(0xFFF5F3FF),
                image: DecorationImage(image: AssetImage('images/${widget.img}.png')
                ),
              ),
              child: Center(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(CupertinoIcons.play_arrow_solid,
                  color: Color(0xFF674AEF),
                  size: 45,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Text('${widget.img} Complete Course',style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600
            ),
            ),
            const SizedBox(height: 5),
            Text('Created by dear Programmer',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black.withOpacity(0.7)
            ),),
              const SizedBox(height: 5),
            Text('55 Videos',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Colors.black.withOpacity(0.7)
            ),),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 10),
                decoration: BoxDecoration(
                  color: const Color(0xFFF5F3FF),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Material(
                      color: isVideosection? const Color(0xFF674AEF):const Color(0xFF674AEF).withOpacity(0.6),
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            isVideosection = false;
                            
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 35),
                          // ignore: prefer_const_constructors
                          child: Text('Videos',style: TextStyle(color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          ),),
                        ),
                      ),
                    ),
                     Material(
                      color: isVideosection? const Color(0xFF674AEF):const Color(0xFF674AEF).withOpacity(0.6),
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                        onTap: (){
                             isVideosection = true;
                           
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 35),
                          // ignore: prefer_const_constructors
                          child: Text('Description',style: TextStyle(color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          ),),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 10),
        
            isVideosection?  const Description():  VideoSection(),
          ],
        ),
      ),
    );
  }
}