import 'package:flutter/material.dart';
import 'package:sales_tracker/presentation/models/languages_view_model.dart';

class LanguagesView extends StatelessWidget {
  final LanguagesViewModel languagesViewModel;
  final void Function(int index) onLanguageSelected;
  final languages = ['English', 'አማርኛ']; //TODO Replace with loaded Languages

  LanguagesView({this.languagesViewModel, this.onLanguageSelected});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: languages.length,
        itemBuilder: (BuildContext context, int index) {
          if (index == languagesViewModel.selectedLanguageIndex)
            return ListTile(
              title: Text('${languages[index]}'),
              trailing: Icon(Icons.check),
              onTap: () {},
            );
          return ListTile(
            title: Text('${languages[index]}'),
            onTap: () {
              onLanguageSelected(index);
            },
          );
        });
  }
}
