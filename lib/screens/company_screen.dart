import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:movies_app_flutter/model/compani.dart';
import 'package:movies_app_flutter/services/movie.dart';

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Route'),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
    );
  }
}

class Companypage extends StatelessWidget {
  const Companypage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late Future<CompanyResponse> np;
    np = MoviesProvider().getCompany(24);
    return Scaffold(
      appBar: AppBar(),
      body: CustomScrollView(
        slivers: [
          SliverList(delegate: SliverChildListDelegate([getInfo(context, np)]))
        ],
      ),
    );
  }

  Widget getInfo(BuildContext context, Future<CompanyResponse> np) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Center(
      child: FutureBuilder<CompanyResponse>(
        future: np,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: snapshot.data!.id,
              itemBuilder: (context, index) {
                return Center(
                    child: Card(
                        elevation: 15.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Container(
                            margin: EdgeInsets.only(top: 2.0),
                            padding: EdgeInsets.only(bottom: 2.0),
                            child: Column(children: [
                              Text(
                                "Productora: " + snapshot.data!.name,
                                style: textTheme.headline5,
                                overflow: TextOverflow.fade,
                                maxLines: 2,
                              ),
                              Text(
                                "Sede: " + snapshot.data!.headquarters,
                                style: textTheme.headline5,
                                overflow: TextOverflow.fade,
                                maxLines: 2,
                              ),
                              Text(
                                "Página web: " + snapshot.data!.homepage,
                                style: textTheme.headline5,
                                overflow: TextOverflow.fade,
                                maxLines: 2,
                              ),
                            ]))));
              },
            );
          }
          return CircularProgressIndicator();
        },
      ),
    );
  }
}
