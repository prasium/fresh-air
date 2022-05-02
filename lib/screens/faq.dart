import 'package:flutter/material.dart';
import '../models/faq_file.dart';

class FAQ extends StatefulWidget {
  
  static const routeName = 'faq';
    
  const FAQ({Key? key}) : super(key: key);

  @override
  State<FAQ> createState() => _FAQState();
}

class _FAQState extends State<FAQ> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Frequently Asked Questions'),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) =>
            QAItem(data[index]),
        itemCount: data.length,
      ),
    );
  }
}

class QAItem extends StatelessWidget {
  const QAItem(this.item);

  final QA item;

  Widget _buildTiles(QA root) {
    return ExpansionTile(
      key: PageStorageKey<QA>(root),
      title: Container(
        margin: const EdgeInsets.only(top: 10.0),
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Text(root.title,style: TextStyle(
          fontSize: 20,
        ),),
      ),
      children: [Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        child: Text(root.answer,
         style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18), textAlign: TextAlign.justify,),
      ),],
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(item);
  }
}