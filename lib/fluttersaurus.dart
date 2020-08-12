import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttersaurus/search/search.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thesaurus_repository/thesaurus_repository.dart';

class Fluttersaurus extends StatelessWidget {
  const Fluttersaurus({
    Key key,
    @required ThesaurusRepository thesaurusRepository,
  })  : assert(thesaurusRepository != null),
        _thesaurusRepository = thesaurusRepository,
        super(key: key);

  final ThesaurusRepository _thesaurusRepository;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: _thesaurusRepository,
      child: MaterialApp(
        theme: ThemeData(
          textTheme: GoogleFonts.abrilFatfaceTextTheme(),
        ),
        home: SearchPage(),
      ),
    );
  }
}
