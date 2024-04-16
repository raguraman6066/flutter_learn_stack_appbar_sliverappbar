import 'package:flutter/material.dart';

class SliverAppbarPage extends StatelessWidget {
  const SliverAppbarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 100,
        toolbarOpacity: 0.5,
        leadingWidth: 100,
        leading: Icon(Icons.settings),
        title: Text("title"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        actions: [
          Icon(Icons.account_circle),
          Icon(Icons.more_vert),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Center(
          child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SliverAppbar(),
                  ),
                );
              },
              child: Text("Click to sliver appbar"))),
    );
  }
}

class SliverAppbar extends StatefulWidget {
  const SliverAppbar({Key? key}) : super(key: key);

  @override
  State<SliverAppbar> createState() => _SliverAppbarState();
}

class _SliverAppbarState extends State<SliverAppbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            flexibleSpace: FlexibleSpaceBar(
              title: Text("SliverAppbar"),
              background: Image.network("https://www.daily.co/blog/content/images/2023/07/Flutter-feature.png",fit: BoxFit.fill,),
            ),
            // pinned:true ,
            snap: true,
            // snap with floating
            floating: true,
            //both pinned and floating
            backgroundColor: Colors.blue,
            leading: Icon(Icons.account_circle,size: 40,color: Colors.white,),
            // title: Text("S L I V E R A P P B A R"),
            expandedHeight: 200,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Container(
                margin: EdgeInsets.all(10),
                height: 100,
                color: Colors.cyan,
              );
            }, childCount: 10),
          ),
        ],
      ),
    );
  }
}
