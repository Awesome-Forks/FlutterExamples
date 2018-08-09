import 'package:flutter/material.dart';

class Slivers01 extends StatefulWidget {
  Slivers01({this.list});

  List list;

  @override
  _Slivers01State createState() => _Slivers01State();
}

class _Slivers01State extends State<Slivers01>
    with SingleTickerProviderStateMixin {
  TabController controller;
  String imageURL = 'https://avatars2.githubusercontent.com/u/15886737?v=4';
  List<bool> data = [];
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();

  @override
  void initState() {
    super.initState();
    controller = new TabController(vsync: this, length: 2);
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: new NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              new SliverAppBar(
                backgroundColor: Colors.purple,
                title: new Text("Flutter Examples"),
                expandedHeight: 240.0,
                floating: true,
                pinned: true,
                forceElevated: innerBoxIsScrolled,
                flexibleSpace: FlexibleSpaceBar(
                    background: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Padding(
                      padding: EdgeInsets.only(top: 30.0),
                      child: ClipOval(
                        child: new Image.network(
                          imageURL,
                          width: 80.0,
                          height: 80.0,
                        ),
                      ),
                    ),
                    new SizedBox(height: 10.0),
                    new Text(
                      "nitishk72",
                      style: new TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
                bottom: new TabBar(
                  controller: controller,
                  tabs: <Widget>[
                    new Padding(
                      padding: EdgeInsets.symmetric(vertical: 13.0),
                      child: new Text(
                        "Timeline",
                        style: TextStyle(color: Colors.white, fontSize: 15.0),
                      ),
                    ),
                    new Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 13.0,
                      ),
                      child: new Text(
                        "Profile",
                        style: TextStyle(color: Colors.white, fontSize: 15.0),
                      ),
                    ),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            controller: controller,
            children: <Widget>[
              ListView.builder(
                  itemCount: 15,
                  itemBuilder: (_, index) {
                    if (data.length < 15) data.add(false);
                    return CardUI(index);
                  }),
              Center(
                child: new Text('Page 1'),
              )
            ],
          )),
    );
  }

  Widget CardUI(int index) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 8.0),
      child: new Container(
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new ClipOval(
                  child: new Image.network(
                    imageURL,
                    width: 30.0,
                    height: 30.0,
                  ),
                ),
                new SizedBox(
                  width: 15.0,
                ),
                new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Text(
                      'Nitish Kumar Singh',
                      style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                    ),
                    new Text('20 July 20:35',style: TextStyle(fontSize: 10.0),)
                  ],
                )
              ],
            ),
            Divider(),
            new Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry' +
                    's standard dummy text ever since the 1500s, when an' +
                    'unknown printer took a galley of type and scrambled it to' +
                    'make a type specimen book'),
            new Row(
              children: <Widget>[
                Expanded(
                  child: new IconButton(
                      icon: Icon(
                        Icons.thumb_up,
                        size: 18.0,
                        color: data[index] ? Colors.blue : Colors.grey,
                      ),
                      onPressed: () {
                        data[index] = !data[index];
                        setState(() {});
                      }),
                ),
                Expanded(
                  child: new FlatButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.mode_comment,
                      size: 18.0,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Expanded(
                  child: new FlatButton(
                      onPressed: () {
                        showModalBottomSheet<void>(
                            context: context,
                            builder: (BuildContext context) {
                              return new Container(
                                  child: new Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  new ListTile(
                                    title: new Text('Share on E-mail'),
                                    leading: Icon(Icons.email),
                                    onTap: () {},
                                  ),
                                  new ListTile(
                                    title: new Text('Share on Whats App'),
                                    leading: Icon(Icons.phone),
                                    onTap: () {},
                                  ),
                                  new ListTile(
                                    title: new Text('Share on Instagram'),
                                    leading: Icon(Icons.camera_alt),
                                    onTap: () {},
                                  ),
                                ],
                              ));
                            });
                      },
                      child: Icon(
                        Icons.share,
                        size: 18.0,
                        color: Colors.grey,
                      )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
