import 'package:equatable/equatable.dart';

class Article extends Equatable {
  final String id;
  final String title;
  final String subtitle;
  final String body;
  final String author;
  final String authorImageUrl;
  final String category;
  final String imageUrl;
  final int views;
  final DateTime createdAt;

  const Article({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.body,
    required this.author,
    required this.authorImageUrl,
    required this.category,
    required this.imageUrl,
    required this.views,
    required this.createdAt,
  });

  static List<Article> articles = [
    Article(
      id: '1',
      title:
          "Avrupa Birliği'nde, yenilenebilir enerji kaynakları olan rüzgar ve güneş enerjisi, fosil yakıtlardan daha fazla enerji üretti. ",
      subtitle: 'Çevre Haberleri',
      body:
          "Enerji alanında faaliyet gösteren bir düşünce kuruluşu olan Ember'in verilerine göre, AB'de mayıs ayında üretilen elektriğin üçte biri rüzgar ve güneş enerjisinden elde edildi. Bu oran, fosil yakıtların ürettiği enerjinin yüzde 27'ye düştüğü en düşük seviyeyi temsil ediyor. Ember, fosil yakıtlardan enerji üretiminin AB'de büyük bir düşüş trendinde olduğunu belirtiyor. Avrupa yöneticisi Sarah Brown, temiz enerjinin sürekli olarak rekorlar kırdığını ve AB'de elektrik dönüşümünün hızla ilerlediğini ifade ediyor.",
      author: 'GreenShare',
      authorImageUrl:
          'https://images.unsplash.com/photo-1658786403875-ef4086b78196?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1287&q=80',
      category: 'Çevre',
      views: 15600,
      imageUrl:
          'https://plus.unsplash.com/premium_photo-1679917152317-170f1613fbfe?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1632&q=80',
      createdAt: DateTime.now().subtract(const Duration(hours: 5)),
    ),
    Article(
      id: '2',
      title:
          "Norveç'in Bergen kenti, yayalar ve bisikletliler için dünyanın en uzun tünelini inşa etti. ",
      subtitle: 'Çevre Haberleri',
      body:
          'Fyllingsdal tüneli, 2,9 kilometre uzunluğunda olup 15 Nisan 2023 tarihinde halka açılacak. Tünel, bisikletle yaklaşık 10 dakika ve yürüyerek 30 ila 45 dakika süren bir geçiş süresi sunacak. Lovstakken dağını kesen bu tünel, Fyllingsdalen ve Mindemyren yerleşim bölgelerini birbirine bağlayacak.',
      author: 'GreenShare',
      authorImageUrl:
          'https://images.unsplash.com/photo-1658786403875-ef4086b78196?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1287&q=80',
      category: 'Bisiklet',
      views: 16800,
      imageUrl:
          'https://images.unsplash.com/photo-1475455608450-4c86c8453775?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
      createdAt: DateTime.now().subtract(const Duration(hours: 6)),
    ),
    Article(
      id: '3',
      title:
          "ABD'deki araştırmacılar, orman yangınlarından kaynaklanan dumanın niteliği, niceliği ve süresinin tehlikeli olabileceği konusunda uyarıyor.",
      subtitle: 'Çevre Haberleri',
      body:
          " Orman yangınları, sadece çıktıkları bölgedeki doğal hayatı ve ekosistemi yok etmekle kalmıyor, aynı zamanda yüzlerce kilometre öteye yayılan zehirli dumanıyla da sorun oluşturuyor. Araştırmalar, dumanın en büyük tehlikesinin akciğerlere nüfuz eden küçük partiküller olduğunu ortaya koyuyor. Bu partiküller, astım gibi sağlık sorunlarını tetikleyebilir, solunum ve kalp hastalıklarını kötüleştirebilir ve beyin-sinir sistemi üzerinde etkisi olabileceği belirtiliyor. Ayrıca, yangında yanmış bitkilerin kimyasal bileşimi ve yangının etkisiyle ortaya çıkan zehirli maddeler, insan sağlığını tehdit edebilir. Dumana maruz kalmak burun ve geniz tahribatına, savunma mekanizmalarının harekete geçmesine ve grip vakalarında artışa neden olabilir. Dumanın uzak mesafelere gittiğinde zehirlilik derecesinin azalıp azalmadığı konusu ise henüz net değildir, ancak atmosferde uzun süre kalan dumanın oksidan ve serbest radikaller oluşturduğu bilinmektedir. Bu durum, sağlık üzerinde olumsuz etkilere yol açabilecek potansiyel bir tehlike olarak değerlendirilmektedir.",
      author: 'GreenShare',
      authorImageUrl:
          'https://images.unsplash.com/photo-1658786403875-ef4086b78196?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1287&q=80',
      category: 'Yangınlar',
      views: 11420,
      imageUrl:
          'https://images.unsplash.com/photo-1600181957881-b96c42bc6fab?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=688&q=80',
      createdAt: DateTime.now().subtract(const Duration(hours: 9)),
    ),
    Article(
      id: '4',
      title:
          "Gabon, saldığı karbondioksitten daha fazlasını absorbe eden az sayıda ülkeden biri olarak çevre çabalarının ödüllendirilmesini istiyor.",
      subtitle: 'Çevre Haberleri',
      body:
          "Gabon, dünyanın en büyük ikinci tropikal ormanlarına sahip olan Kongo Havzası'ndaki Afrika Ormanları'nın kritik öneme sahip olduğu bir ülkedir. Gabon, tropikal ormanların korunması konusunda çaba gösteren birçok ülke arasında yer almaktadır. Gabon, Fransa ile birlikte düzenlenen One Forest Zirvesi'nde uluslararası liderlerin, bilim insanlarının ve sivil toplum kuruluşlarının bir araya geldiği önemli bir konferansa ev sahipliği yapmıştır. Gabon, yılda 10 milyon ton karbondioksit depolayarak saldığı miktarı aşan nadir ülkelerden biridir. Gabon, çevre bilincini artırmak için 13 milli park açarak fauna ve floranın korunmasını sağlamıştır. Ancak yasa dışı avcılık, bitki türlerinin kaçakçılığı ve yasa dışı odun kesimi gibi sorunlarla karşı karşıyadır. Gabon, ormanlarını sürdürülebilir bir şekilde işletme konusunda da çaba sarf etmektedir. Ülke, ham tomruk ihracatını yasaklamış ve kerestenin sürdürülebilir bir şekilde işlenmesi için özel ekonomik bölgeler oluşturmuştur. Gabon, ekonomik kalkınma ile çevre koruması arasında bir denge sağlamaya çalışmaktadır. Hâlâ petrol gelirlerine bağımlı olan ülke, gelecekte ekonomisinin çeşitlendirilmesi gerektiğinin farkındadır. Tropikal ormanların sürdürülebilir yönetimi ve desteklenmesi için finansal kaynakların sağlanması da önemli bir hedef olarak belirtilmektedir.",
      author: 'GreenShare',
      authorImageUrl:
          'https://images.unsplash.com/photo-1658786403875-ef4086b78196?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1287&q=80',
      category: 'Karbondioksit',
      views: 19400,
      imageUrl:
          'https://images.unsplash.com/photo-1601578786270-9cab4ee12791?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1173&q=80',
      createdAt: DateTime.now().subtract(const Duration(hours: 19)),
    ),
    Article(
      id: '5',
      title:
          'Fransa ve Almanya, trenle seyahatleri teşvik etmek ve kültürler arası değişimi desteklemek amacıyla ortak bir program başlatıyor.',
      subtitle: 'Çevre Haberleri',
      body:
          "Bu yaz aylarında geçerli olacak 60 bin ücretsiz bilet, 27 yaş altındaki gençlerin kullanımına sunulacak. Proje, Fransız ve Alman bakanların Paris'teki görüşmesinin ardından duyuruldu. Biletler, 60 yıl önce imzalanan Elysée Barış Antlaşması'nı anmak için basılacak. Bilet kullanım şartları yakın bir tarihte açıklanacak, ancak gençlerin programa katılmak için bir çekilişe katılması gerekecek. Devlet demiryolları olan Fransız SNCF ve Alman Deutsche Bahn, projeye finansal destek sağlayacak. Ayrıca, bakanlar 2024'te Paris-Berlin arasında başlatılması planlanan hızlı tren hattını desteklediklerini açıkladı. Şu anda iki başkent arasında trenle seyahat etmek için farklı garlarda aktarma yapmak gerekiyor. Ek olarak, Aralık 2023'te Paris ve Berlin arasında kuşetli tren seferleri de başlayacak.",
      author: 'GreenShare',
      authorImageUrl:
          'https://images.unsplash.com/photo-1658786403875-ef4086b78196?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1287&q=80',
      category: 'Çevre',
      views: 20750,
      imageUrl:
          'https://images.unsplash.com/photo-1582538883674-a7f8bf900004?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
      createdAt: DateTime.now().subtract(const Duration(hours: 22)),
    ),
  ];

  @override
  List<Object?> get props => [
        id,
        title,
        subtitle,
        body,
        author,
        authorImageUrl,
        category,
        imageUrl,
        createdAt,
      ];
}
