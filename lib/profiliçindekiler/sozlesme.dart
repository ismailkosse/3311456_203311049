import 'package:flutter/material.dart';


class Sozlesme extends StatelessWidget {
  const Sozlesme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Kullanıcı Sözleşmesi")),
      body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Text(
                '''Haber Gazetesi hizmetine bağlı tüm servislerin, alan adlarının, yazılım kodlarının, ara yüzlerinin, içeriklerinin, ürün incelemelerinin, videolarının, algoritmalarının, çizimlerinin, modellerinin, tasarımlarının ve diğer tüm fikri sınai hakların sahibi, (üçüncü partilerden sağlanan içerik ve uygulamalar hariç olmak üzere) Haber Gazetesi’a aittir. Sunulan servislerin yazılım, tasarım ve telif hakları tamamen Haber Gazetesi’e aittir. Servislerin ve hizmetlerin, bununla bağlantılı sayfaların kopyalanmasına, çoğaltılmasına ve yayılmasına, ayrıca tersine mühendislik işlemlerine tabi tutulmasına izin verilmemektedir.
Haber Gazetesi’a üye olabilmek ve/veya Site’de sunulan hizmetleri kullanabilmek için işbu Sözleşmenin hüküm ve şartlarının kullanıcı tarafından kabul ve taahhüt edilmesi gerekmektedir. Her halükarda Site’yi kullanmaya devam etmeniz bu koşulların tarafınızca kabul edildiği anlamına gelecektir.'''),
          )),
    );
  }
}