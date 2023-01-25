import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/views/widgets/edit_note_view.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: ((context) => const EditNoteView()),
          ),
        );
      },
      child: Container(
          padding: const EdgeInsets.only(
            left: 16,
            top: 24,
            bottom: 24,
          ),
          decoration: BoxDecoration(
            color: const Color(0xffffcc80),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: const Text(
                  'Flutter Tips',
                  style: TextStyle(color: Colors.black, fontSize: 26),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Text(
                    'Build your career with tharwat samy',
                    style: TextStyle(
                      color: Colors.black.withOpacity(.5),
                      fontSize: 18,
                    ),
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon:const  Icon(
                    FontAwesomeIcons.trash,
                    color: Colors.black,
                    size: 24,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 24,
                ),
                child: Text(
                  'May21 , 2022',
                  style: TextStyle(
                    color: Colors.black.withOpacity(.4),
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          )),
    );
  }
}