import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  const Description({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:20.0),
      child: Column(
        children: [
          Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus aliquam mi quis blandit. Proin quis venenatis mauris, nec congue velit. Duis tempor, sapien at mattis porta, turpis magna mattis velit, eu consectetur nisl ante quis orci. Sed facilisis orci a pulvinar sagittis. Fusce in mollis orci. Cras imperdiet mi vel sapien fermentum, ac imperdiet nulla fermentum. Nunc vitae varius mauris. Curabitur porttitor at neque vel varius. Nam leo diam, lobortis sed egestas id, cursus nec dolor. Nam placerat eu libero eget pharetra.',
          style: TextStyle(
            fontSize: 16,
            color: Colors.black.withOpacity(0.7)
          ),
          textAlign: TextAlign.justify,
          ),
         const SizedBox(height: 20),
          Row(
            children: const [
               Text('Course Length: ',style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w500
              ),
              ),
              Icon(Icons.timer,
              color: Color(0xFF674AEF
              ),
              ),
              SizedBox(width: 5),
              Text('26 Hours',style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500
              ),)
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: const [
                Text('Rating',style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w500
              ),),
              Icon(Icons.star,
              color: Colors.amber
              ),
              SizedBox(width: 5),
              Text('4.5',style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500
              ),)
            ],
          )
        ],
      ),
    );
  }
}