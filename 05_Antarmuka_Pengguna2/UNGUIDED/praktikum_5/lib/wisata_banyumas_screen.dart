import 'package:flutter/material.dart';

class WisataBanyumasScreen extends StatelessWidget {
  final List<Place> places = [
    Place(
      name: 'Baturaden',
      imageUrl:
          'https://awsimages.detik.net.id/community/media/visual/2023/09/05/lokawisata-baturraden-1.jpeg?w=800',
      description:
          'Baturraden adalah salah satu destinasi wisata alam populer di Banyumas. Berada di kaki Gunung Slamet, Baturraden menawarkan pemandangan pegunungan yang memukau, kebun bunga, air terjun, dan pemandian air panas. Tempat ini juga cocok untuk aktivitas outbond, hiking, atau bersepeda. Ada juga Taman Miniatur Dunia dan kebun binatang mini yang bisa dinikmati oleh anak-anak dan keluarga.',
    ),
    Place(
      name: 'Curug Cipendok',
      imageUrl: 'https://ik.trn.asia/uploads/2023/10/1696506316639.jpeg',
      description:
          'Curug Cipendok merupakan air terjun yang berada di lereng Gunung Slamet. Tingginya mencapai sekitar 92 meter dan dikelilingi hutan tropis yang masih alami. Tempat ini cocok bagi pecinta alam dan trekking, dengan udara sejuk dan pemandangan yang menyejukkan mata. Curug Cipendok juga memiliki fasilitas pendukung seperti area parkir dan warung makan.',
    ),
    Place(
      name: 'Alun Alun Purwokerto',
      imageUrl:
          'https://media-cdn.tripadvisor.com/media/photo-s/0e/cf/2d/08/purwokerto.jpg',
      description:
          'Alun-alun Purwokerto adalah pusat kota yang menjadi tempat berkumpulnya warga Banyumas. Di sini, pengunjung bisa menikmati suasana kota, mencoba berbagai kuliner khas, atau sekadar bersantai di taman yang luas. Pada malam hari, alun-alun menjadi lebih ramai dengan berbagai aktivitas hiburan, seperti musik jalanan dan pedagang kaki lima.',
    ),
    Place(
      name: 'Museum Bank Rakyat Indonesia (BRI)',
      imageUrl:
          'https://fastly.4sqi.net/img/general/600x600/48750617_Y_X1FeYzjjBDYnd0PoF54OP9w7HRT0nD0xI8rSmbJHY.jpg',
      description:
          'Museum BRI yang terletak di Purwokerto ini didirikan untuk mengenang sejarah berdirinya bank pertama di Indonesia. Di museum ini, pengunjung bisa melihat berbagai koleksi benda-benda bersejarah, dokumen penting, hingga mesin-mesin yang digunakan pada zaman dahulu dalam operasional bank. Museum ini cocok bagi yang ingin mengenal lebih dekat sejarah ekonomi dan perbankan di Indonesia.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text('Rekomendasi Wisata Banyumas'),
            backgroundColor: Colors.teal,
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                'https://asset.kompas.com/crops/S6FWW_5_Rugm-Crc92pD2iPXfzc=/0x0:750x500/750x500/data/photo/2022/02/05/61fe110325853.jpg',
                fit: BoxFit.cover,
              ),
            ),
            floating: false,
            pinned: true,
            snap: false,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final place = places[index];
                return Card(
                  margin: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Image.network(
                        place.imageUrl,
                        height: 200,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              place.name,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              place.description,
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey[700],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
              childCount: places.length,
            ),
          ),
        ],
      ),
    );
  }
}

class Place {
  final String name;
  final String imageUrl;
  final String description;

  Place({
    required this.name,
    required this.imageUrl,
    required this.description,
  });
}
