import 'package:flutter/material.dart';

// Fungsi untuk membuat CustomScrollView
Widget buildCustomScrollView() {
  return CustomScrollView(
    slivers: <Widget>[
      // Sliver App Bar
      SliverAppBar(
        pinned: true,
        expandedHeight: 250.0,
        flexibleSpace: FlexibleSpaceBar(
          background: Container(
            color: Colors.blue, // Latar belakang untuk fleksibel space
          ),
          title: Container(
            color: Colors.black54, // Warna latar belakang judul
            padding: const EdgeInsets.all(8.0), // Padding untuk judul
            child: const Text(
              'Custom ScrollView',
              style: TextStyle(color: Colors.white), // Warna teks
            ),
          ),
        ),
      ),
      // Sliver Grid
      SliverGrid(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200.0,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
          childAspectRatio: 4.0,
        ),
        delegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            return Container(
              alignment: Alignment.center,
              color: Colors.teal[100 * (index % 9)],
              child: Text('Grid Item $index'),
            );
          },
          childCount: 20, // Jumlah item grid
        ),
      ),
      // Sliver Fixed List
      SliverFixedExtentList(
        itemExtent: 50.0,
        delegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            return Container(
              alignment: Alignment.center,
              color: Colors.lightBlue[100 * (index % 9)],
              child: Text('List Item $index'),
            );
          },
          childCount: 20, // Jumlah item list
        ),
      ),
    ],
  );
}
