import 'package:flutter/material.dart';

class WhatsappPage extends StatelessWidget {
  const WhatsappPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 70,
              height: 70,
              child: CircleAvatar(
                radius: 2,
                backgroundImage: AssetImage('assets/imagen1.jpg'),
              ),
            ),
            SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Stewart Family',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text('Steve: Great, thanks!!'),
              ],
            ),
            Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text('11:39 AM'),
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 15, 187, 15),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  width: 24,
                  height: 24,
                  child: Center(
                    child: Text('1', style: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
