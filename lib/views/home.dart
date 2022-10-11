part of 'pages.dart';

class MissionOne extends StatefulWidget {
  const MissionOne({super.key});

  @override
  State<MissionOne> createState() => _MissionOneState();
}

class _MissionOneState extends State<MissionOne> {

  bool _fav = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mission 1"),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text("Book Now!"),
        onPressed: (() {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Booking()));
        }),
        icon: Icon(Icons.shopping_cart),
        ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
            colors: [Colors.blue.shade100,Colors.blue]
          )
        ),
        child: 
          Column(
            children: [
              Flexible(
                flex: 2,
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: double.infinity,
                        child:
                        Image.asset(
                          'assets/images/penida.jpg',
                          fit: BoxFit.cover
                        )
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child:
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: ElevatedButton(
                            onPressed: () => setState((() => _fav = !_fav)),
                            child: Icon(Icons.favorite, color: _fav ? Colors.red : Colors.grey),
                            style: ElevatedButton.styleFrom(
                              shadowColor: Colors.white,
                              elevation: 0,
                              padding: const EdgeInsets.all(20),
                              minimumSize: const Size.fromRadius(12),
                              backgroundColor: Colors.white,
                              shape: CircleBorder()
                            )
                          ),
                        )
                      )
                    ],
                  )
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 2),
                  width: double.infinity,
                  height: double.infinity,
                  child: 
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Flexible(
                          child:
                          Container(
                            width: 150,
                            height: 100,
                            padding: EdgeInsets.all(6),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: SizedBox.fromSize(
                                size: Size.fromRadius(38),
                                child: Image.asset(
                                  'assets/images/penida2.jpg',
                                  fit: BoxFit.cover
                                ),
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          child:
                          Container(
                            width: 150,
                            height: 100,
                            padding: EdgeInsets.all(6),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: SizedBox.fromSize(
                                size: Size.fromRadius(38),
                                child: Image.asset(
                                  'assets/images/penida3.jpg',
                                  fit: BoxFit.cover
                                ),
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          child:
                          Container(
                            width: 150,
                            height: 100,
                            padding: EdgeInsets.all(6),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: SizedBox.fromSize(
                                size: Size.fromRadius(38),
                                child: Image.asset(
                                  'assets/images/penida4.jpg',
                                  fit: BoxFit.cover
                                ),
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          child:
                          Container(
                            width: 150,
                            height: 100,
                            padding: EdgeInsets.all(6),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: SizedBox.fromSize(
                                size: Size.fromRadius(38),
                                child: Image.asset(
                                  'assets/images/penida5.jpg',
                                  fit: BoxFit.cover
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]
                    ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                child: 
                  Text(
                    "Welcome To Nusa Penida Island",
                    style: 
                      TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                      ),),
              ),
              Flexible(
                flex: 3,
                child: 
                  ListView(
                    padding: EdgeInsets.all(6.0),
                    children: <Widget>[
                      Text(
                        "\t\t\t\t\t\tNusa Penida adalah sebuah pulau (=nusa) bagian dari negara Republik Indonesia yang terletak di sebelah tenggara Bali yang dipisahkan oleh Selat Badung. Di dekat pulau ini terdapat juga pulau-pulau kecil lainnya yaitu Nusa Ceningan dan Nusa Lembongan. Perairan pulau Nusa Penida terkenal dengan kawasan selamnya di antaranya terdapat di Crystal Bay, Manta Point, Batu Meling, Batu Lumbung, Batu Abah, Toyapakeh dan Malibu Point.\n\n\t\t\t\t\t\tPerbukitan dan kapur karang merupakan kondisi tanah di pulau ini, salah satunya gunung bukit tertinggi bernama Gunung Mundi yang terletak di Kecamatan Nusa Penida. Sumber air adalah mata air dan sungai hanya terdapat di wilayah daratan Kabupaten Klungkung yang mengalir sepanjang tahun.\n\n\t\t\t\t\t\tDesa-desa pesisir nusa penida di sepanjang pantai bagian utara berupa lahan datar dengan kemiringan 0 – 3 % dari ketinggian lahan 0-268 m dpl.Sedangkan di Kecamatan Nusa Penida sama sekali tidak ada sungai. Sumber air di Kecamatan Nusa Penida adalah mata air dan air hujan yang ditampung dalam cubang oleh penduduk setempat. Kabupaten Klungkung termasuk beriklim tropis. Bulan-bulan basah dan bulan-bulan kering antara Kecamatan Nusa Penida dan Kabupaten Klungkung daratan sangat berbeda.\n"
                        )
                    ],
                  ),
              )
            ],
          ),
      )
    );
  }
}