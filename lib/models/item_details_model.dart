import 'shop_by_module.dart';

class Item_Details_Module {
  String name;
  String pathImage;
  int price;
  List<String> description;
  String shopByType;
  List<String> components;
  Item_Details_Module({
    required this.name,
    required this.pathImage,
    required this.components,
    required this.description,
    required this.price,
    required this.shopByType,
  });
}

List<Item_Details_Module> item_Details_values = [
  Item_Details_Module(
      name: 'غسول فوم',
      components: [
        'الحامض الاميني',
        'B3 فيتامين ',
        ' الكلسرين',
        'مستخلص الخيار',
      ],
      description: [
        'غسول للوجه من شركه تايزو لاامريكيه',
        'يعمل على تنظيف الوجه من الترسبات والشوائب الهنية وايضا ازاله المك اب بالنسبه للنساء مع اضافه ترطيب مهم للبشرة خلال اليوم'
            ' بستخدم مرتين في اليوم'
      ],
      pathImage: 'assets/images/غسول وجة ديرمدك.png',
      price: 25000,
      // هنا حسب التسلسل الذي في الجدول الاثاني
      shopByType: shop_By_values[0].name),
  Item_Details_Module(
      name: ' واقي شمس ملون بالمعادن تايزو 3',
      components: [
        'طبقات TiZO3 ',
        '  حمايه ماديه واسعة الطيف',
      ],
      description: [
        'هو واقي شمسي معدني شفاف الوجه يوفر حمايه انيقه من اشعه الشمس ',
        ' حمايه مادية واسعة الطيف ',
        ' لطيف بدرجه كافيه على جميع انواع البشرة ',
        'صامد للضوء ',
        'خال من الفلاتر الوقايه من الشمس الكيميائيه',
      ],
      pathImage: 'assets/images/واقي شمس tizo3.png',
      price: 30000,
      // هنا حسب التسلسل الذي في الجدول الاثاني
      shopByType: shop_By_values[0].name),
  Item_Details_Module(
      name: 'غسول يومي ممن حامض الساليسيليك cosrx',
      pathImage: 'assets/images/غسول وجه.JPEG',
      components: [
        ' تترك البشرة ناعمة وسللسة',
        'مثالي لجميع انواع البشرة',
        '  غسول  يحتوي على مستخلص النباتات  وهذا الغسول يزيل بلطف الشوائب والغدد الدهنيه الزائدة',
      ],
      description: [
        ' ضعي كمية في يدك واضيفي الماء وتحويلها الى رغوة ومن ثم قومي بالتدليك'
      ],
      price: 15000,
      shopByType: shop_By_values[0].name),
  Item_Details_Module(
      name: ' كريم معالج للهالات السوداء والتجاعيد CELLBN',
      pathImage: 'assets/images/كريم اساس هيلثي مكس من برجواز.png',
      components: [
        'المكونات الفعالة زيت زهور الجوري العضوي الكولاجين الطبيعي ومستخلصات زيوت الباذنجان'
      ],
      description: [
        ' كريم معالج للهالات السوداء والتجاعيد من سيلبن الكورية يعمل بفعالية على تفتيح البشره'
      ],
      price: 30000,
      shopByType: shop_By_values[0].name),
  Item_Details_Module(
      name: 'كريم واقي شمس ديرمدك للبشرة الدنية المختلطة',
      pathImage: 'assets/images/واقي شمسي ديرمدك.png',
      components: ['كريم واقي شمس ديرمنك مقاوم للماء ونسب حماية 50 '],
      description: [
        'يحافظ على لون البشرة ويحميل من الصبغات والنمش لبشرة للبشة الدنية المختلطة',
        'شفاف لايحتوي على لون ',
        'لا يسبب تحسس',
        'حماية الحمض  النووي لخلايا البشرة ',
        'حماية طويلة ضد اشعة الشمس '
      ],
      price: 10000,
      shopByType: shop_By_values[0].name),
  Item_Details_Module(
      name: ' غسول ديرمدك للعناية بالبشرة المختلطة والدهنية',
      pathImage: 'assets/images/غسول وجة ديرمدك.png',
      components: [
        'ازالة الترسبات والاوساخ اضافة الى شعور بأنتعاش البشرة',
        'بخلاصة شجرة الشاي الاخضر لتنقية الوجة من الحبوب والبثور واعادة توازن دهون اليشرة',
        'غسول وجة للبشرة الدهنية '
      ],
      description: [
        'يعمل كمطهر للبشرة',
        ' يزيل الترسبات من البشرة دون التسبب بأي تهيج للبشرة ',
        'الغسول مكون من فيتامينات فعالة تتغلغل بثواني داخل البشرة الدهنية وتسيطر على افراز الدهون '
      ],
      price: 13000,
      shopByType: shop_By_values[0].name),
  Item_Details_Module(
      name: 'غسول جل منظف درجة الحموظة cosrx',
      pathImage: 'assets/images/غسول جل منظف cosrx.png',
      components: [
        'ينظف البشرة دون الشعور بالتجريد ويترك البشرة منتعشة',
        'ترطيب البشرةمن المهيجات الخارجية ',
        'حماية البشرةمن المهيجات الخارجية',
        'لا تهيج البشرة بل تقوم بعملها في ازالة جميع الشوائب من الجلد',
        'خفيف على البشرة ',
        'جل منخفض درجة الحموظة 150 مل من كوسريكس'
      ],
      description: [
        'ضعي كمية مناسبة من الجل على البشرة وافركيه جيدا ثم اشطفيه'
      ],
      price: 15000,
      shopByType: shop_By_values[0].name),
  Item_Details_Module(
      name: 'غسول جل مائي هايدرو بوست من نتروجينا',
      pathImage: 'assets/images/غسول جل مائي هايدرو بوست.png',
      components: ['يترك البشرة نظيفة ومنتعشة ', 'يعزز الترطيب '],
      description: ['تركيبة خفيفة الوزن'],
      price: 10000,
      shopByType: shop_By_values[0].name),
  Item_Details_Module(
      name: 'قطرة العين visine red eye comfort',
      pathImage: 'assets/images/قطرة الغين visine red.png',
      components: [
        ' ترطيب عالي لجفاف العين ',
        'تعطي بياض ناصع للعين',
        'تخفي احمرار العين'
      ],
      description: [
        'تعالج احتقان العين ',
        'تعالج التحسس نتيجة الاتربة وضوء الشمس واستعمال العدسات'
      ],
      price: 10000,
      shopByType: shop_By_values[0].name),
  Item_Details_Module(
      name: 'سيباميد شامبو ضد تساقط الشعر ',
      pathImage: 'assets/images/سيباميد ضد تساقط الشعر.png',
      components: [
        ' يملك هذا الشامبو صيغة تنظف جديدة تزيل الزيت الزائد بلطف من الشعر وفروة الرأس'
      ],
      description: [
        'وتقلل من تساقط الشعر التي كثيرا ما ترتبط مع مادة زيتية من الشعر  وقشرة الرأس'
      ],
      price: 15000,
      shopByType: shop_By_values[1].name),
  Item_Details_Module(
      name: 'سيباميد شامبو ضد القشرة',
      pathImage: 'assets/images/سيباميد شامبو ضد القشرة.png',
      components: ['شامبو سيباميد ضد القشرة يعد خالي من الصابون والقلويات '],
      description: [
        'يعمل المكون النشط يروكتون اولامين على ضمان تقليل القشرة يبطف'
      ],
      price: 15000,
      shopByType: shop_By_values[1].name),
  Item_Details_Module(
      name: ' شامبو كارنيا افكادو',
      pathImage: 'assets/images/شامبو كارنيا افكادو.png',
      components: [
        'تغذي الوصفه الشعر الجاف جدا او المجمد وتصلحه  يجمع مزيدا بين زيت الافوكادو المعرف بخصائصه المغذية'
      ],
      description: [
        ' يوضع على الشعر المبلل دلكيه على كامل فروة الرأس ثم قومي بالشطف '
      ],
      price: 4000,
      shopByType: shop_By_values[1].name),
  Item_Details_Module(
      name: 'بلسم الترا دو مغذي بزيت الافوكادو من غارنبيه ',
      pathImage: 'assets/images/بلسم الترا دو مغذي بزيت الافوكادو.png',
      components: [
        'مزيج هغذ :تغذي صفتنا الشعر جاف جدا وتصلحه يجمع مزيدا من زيت افوكادو'
      ],
      description: [
        'كيفية الاستخدام :قومي بتوزيع كميه قليلة من المستحظر على الشعر الرطب ودلكي فروة الرأس بلطف بحركه دائرية  ثم قومبي بشطفه '
      ],
      price: 5000,
      shopByType: shop_By_values[1].name),
  Item_Details_Module(
      name: 'غارنييه الترا دو بلسم حليب اللوز',
      pathImage: 'assets/images/غارنييه الترا دو بلسم.png',
      components: [
        'اكتشفي غارنييه الترا دو بلسم حليب اللوز المغذي :العنايه بالشعر الطبيعي المثالي يمكن ان  يبدو التلوث والحرارة والعرق وتراكم المنتجات وكأنها معركة يومية لاداعي للقلق'
      ],
      description: ['يمكنك الاستمتاع بمكونين شهيين في تركيبة كريمية'],
      price: 5000,
      shopByType: shop_By_values[1].name),
  Item_Details_Module(
      name: 'فرشاة الشعر الحرارية من انزو الايطالي',
      pathImage: 'assets/images/فرشاة الشعر الحرارية.png',
      components: [
        ' شعيرات مطلية بالسيراميك ',
        'يوفر مستوى عالي من تدفق الهواء ووقوة التجفيف '
      ],
      description: ['تزيل التكنولوجيا الايونية للكهرباء'],
      price: 30000,
      shopByType: shop_By_values[1].name),
  Item_Details_Module(
      name: 'لوشن سيرافي للترطيب اليومي ',
      pathImage: 'assets/images/لوشن سيرافي.png',
      components: [
        'يساعد على ترطيب البشرة ',
        'هو مرطب خفيغ الوزن خالي من الزيوت '
      ],
      description: [
        'MVEيتكون من ثلاثة سيراميدك اساسية وحمض الهيالورونيك  ويتميز بتقنية '
      ],
      price: 30000,
      shopByType: shop_By_values[2].name),
  Item_Details_Module(
      name: 'سيباميد بلسم لليدين والاظافر',
      pathImage: ' assets/images/سيباميد يلسم اليدين والاظافر.png',
      components: [
        ' للأيدي و الاظافر الناعمة والمعتنى بها جيدا يعد بلسم سياميد هو الحل الامثل توفر المرطبات عالية الفعالية '
      ],
      description: [
        ' الكيراتين المتحلل يقوي الأظافر',
        'يرطب ويحمي الايدي الحساسة',
        'بدون اضافات لونية',
        'للبشره العادية الى الحساسة'
      ],
      price: 10000,
      shopByType: shop_By_values[2].name),
  Item_Details_Module(
      name: ' بخاخ مرطب مضاد للتعرق من دوف ',
      pathImage: ' assets/images/بخاخ مرطب ومضاد للتعرق من دوف.png',
      components: [
        ' يعزز تجديد البشرة المجهدة بالحلاقة',
        ' يغذي البشرة الحساسة تحت الابطين',
        'حماية تصل الى 48 ساعة من العرق والراحة',
        'بخاخ مضاد للتعرق'
      ],
      description: [
        'يرطب ويعطي برائحة منعشة',
        'لايترك البقع على الملابس ',
        ' لاسبب تحسس او تهيج للبشرة'
      ],
      price: 4000,
      shopByType: shop_By_values[2].name),
  Item_Details_Module(
      name: 'فازلين لوشن للجسم بالالوفيرا ',
      pathImage: 'assets/images/فازلين لوشن الجسم بالالوفيرا.png',
      components: ['فازيل لوشن مرطب بالصبار منعش '],
      description: ['لوشن فازلين يدوم 24 ساعةيعطي ترطيب عميق'],
      price: 4000,
      shopByType: shop_By_values[2].name),
  Item_Details_Module(
      name: ' غسول جسم جونسون بزيت اللوز',
      pathImage: 'assets/images/غسول  حسم جونسون  بزيت اللوز.png',
      components: [' غسول جسم جونسون بزيت اللوز وزبدة الشيا'],
      description: [' لتجديد البشره '],
      price: 5000,
      shopByType: shop_By_values[2].name),
  Item_Details_Module(
      name: '   غسول جسم جونسون  مع خلاصة البابايا ',
      pathImage: ' assets/images/غسول جسم جونسون مع خلاصه البابايا.png',
      components: [' غسول جسم جونسون'],
      description: [' مع خلاصه البابايا'],
      price: 5000,
      shopByType: shop_By_values[2].name),
  Item_Details_Module(
      name: ' عطر Versce Eros Flame',
      pathImage: 'assets/images/عطر versace Eros Flams.png',
      components: [' عطر لرجل قوي وعاطفي  وواثق من نفسه '],
      description: ['يتميز بتناقضات قوية  حيث تري المكونات الاكثر اناقة '],
      price: 100000,
      shopByType: shop_By_values[3].name),
  Item_Details_Module(
      name: 'عطر بيلا من نينا ريشتي',
      pathImage: 'assets/images/عطر بيلا من نينا ريتشي.png',
      components: [' 2018في عام  Bella هو عطر زهري -فواكه للنساء ثم اطلاق '],
      description: [
        'مقدمة العطر الراوند الماندرين الاخضر والليمون قلب العطر فيريزيا'
      ],
      price: 65000,
      shopByType: shop_By_values[3].name),
  Item_Details_Module(
      name: 'عطر كول وتر نسائي دافيدوف',
      pathImage: 'assets/images/عطر كول وتر النسائي دافيدوف.png',
      components: [' عطر نسائي الرائحة هادئة للغاية '],
      description: [
        ' مع المكونات الذي تذكرنا بنسيم المحيط وميااة البحر الباردة والفواكة والاعشاب'
      ],
      price: 65000,
      shopByType: shop_By_values[3].name),
  Item_Details_Module(
      name: 'عطر نارسيسو روريغز للسيدات الوردي ',
      pathImage: ' assets/images/عطر نارسيسو رودريغر للسيدات الوردي.png',
      components: ['يمتاز العطر بجوهر مرهف ومنألق مع لمسه عصريه من المسك '],
      description: [' مسك مسحوق السوسن بثلاث زهور بلسم البنزوين'],
      price: 125000,
      shopByType: shop_By_values[3].name),
  Item_Details_Module(
      name: ' عطر سي باشن جورجيو ارماني ',
      pathImage: 'assets/images/عطر سي باشن جورجيو ارماني.png',
      components: [
        'هو عباره عن عطر مخصص للمرأه المفعمه بالانوثة والعواطف وروح الحرية '
      ],
      description: [
        ' بنفجات الكمثرى المتألقه والمبهجة ثم يجمع نفحات الفانيليا '
      ],
      price: 175000,
      shopByType: shop_By_values[3].name),
  Item_Details_Module(
      name: 'مسكارة اسنس الوردية اي لوف اكستريم ',
      pathImage: 'assets/images/مسكارة اسنس الوردية اي لوف اكستريم.png',
      components: [
        'مسكارة اسنس الوردية تعتبر من اشهر الماسكرات على الاطلاق واكثرها طلبا بسبب جودتها وفعاليتها '
      ],
      description: ['مسكارة اسنس البنك تعطي رموش عينيك حجم فوليوم كبير وطويل '],
      price: 5000,
      shopByType: shop_By_values[4].name),
  Item_Details_Module(
      name: ' باليت اسنس ظلال نيود',
      pathImage: 'assets/images/باليت اسنس ظلال نيود.png',
      components: [
        'باليت  ظلال الجفون تحتويعلى 9 الوان الوزن 10 جرام بألوان لامعه ومات '
      ],
      description: [
        'لتترك انطباعا دائما مثاليا لخلق اطلالات مخصصه لمكياج العيون'
      ],
      price: 8000,
      shopByType: shop_By_values[4].name),
  Item_Details_Module(
      name: 'لوس باودر من لورا مارسية',
      pathImage: 'assets/images/لوس ياودر من لورا مارسيه.png',
      components: [
        'تمنع تخلل وتخطيط الكونسيلر',
        'لوس باودر سائبة تسنخدم لتثبيت الكونسيلر'
      ],
      description: [' ناعمه وخفيفة وسائبة ', 'شفافة بدون لون '],
      price: 60000,
      shopByType: shop_By_values[4].name),
  Item_Details_Module(
      name: 'كريم اساس هيلثي  مكس من برجواز ',
      pathImage: 'assets/images/كريم اساس هيلثي مكس من برجواز.png',
      components: [
        'مزيج من الدرجات اللونية  المميزة  يمنح بشرتك لمعه صحية وبشرة مشرفة ',
        'كريم اساس هيلثي مكس من برجوا'
      ],
      description: [
        'ينكون من مزيج رائع من تركيبة الفيتامينات الهامه الذي تعمل على ترطيب وحماية البشرة'
      ],
      price: 12000,
      shopByType: shop_By_values[4].name),
  Item_Details_Module(
      name: 'hاضاءه فور ايفر ',
      pathImage: 'assets/images/اضاءة فور ايفر.png',
      components: ['اضاءة فور ايفر '],
      description: ['52'],
      price: 15000,
      shopByType: shop_By_values[4].name),
  Item_Details_Module(
      name: 'باليت كريمي ميك اب ',
      pathImage: 'assets/images/باليت كريمي ميك اب فور ايفر.png',
      components: ['باليت كريمي ميك اب فور ايفر'],
      description: ['باليت كريمي'],
      price: 15000,
      shopByType: shop_By_values[4].name),
];
