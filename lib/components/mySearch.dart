import 'package:flutter/material.dart';

class Mysearch extends StatelessWidget {
  final TextEditingController textEditingController;
  const Mysearch({super.key, required this.textEditingController});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
      child: Center(
        child: TextFormField(
          controller: textEditingController,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          cursorColor: Colors.white,
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              fillColor: Colors.black,
              filled: true,
              prefixIcon: Icon(Icons.search_rounded),
              prefixIconColor: Theme.of(context).colorScheme.secondary,
              hintText: 'Search',
              suffix: IconButton(
                  onPressed: () {
                    textEditingController.clear();
                  },
                  icon: Icon(Icons.close_rounded))),
        ),
      ),
    );
  }
}
