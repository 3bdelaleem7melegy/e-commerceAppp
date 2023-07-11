// ignore_for_file: unused_import, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class Productt {
  final int id, price;
  final String title, description, image, location;

  Productt({
    required this.price,
    required this.title,
    required this.description,
    required this.image,
    required this.id,
    required this.location,
  });
}

List<Productt> productss = [
  Productt(
    price: 120,
    title: "تبشرت",
    description: "تيشرت بولو قطن باكمام قصيرة مناسب للصيف للرجال",
    image: "images/613zlorAkvL._AC_SY741_.jpg",
    id: 1,
    location: "moll masr",
  ),
  Productt(
    price: 130,
    title: "قميص كلاسيك سادة للرجال",
    description:
        "قميص ناعم بألوان هادئة,اختيار كلاسيكي يناسب جميع المناسبات,سليم فيت,مايكروفايبر",
    image: "images/51qwcacSmlL._AC_SX679_.jpg",
    id: 2,
    location: "moll masr",
  ),
  Productt(
    price: 200,
    title: "بنطلون رياضي بيسيك كارجو ناعم للرجال من دوت جينز وير",
    description: "مقاس عادي , كارجو, قصة كاروت بتصميم مخروطي ,بنطلون ناعم",
    image: "images/51fhSxIRswL._AC_SX679_.jpg",
    id: 3,
    location: "moll masr",
  ),
  Productt(
    price: 150,
    title: "بلوفر برقبة مرتفعة للجنسين",
    description:
        "هاى كول بلياقة عالية سهل الارتداء للجنسين , خامة صوف تركى ,مناسب للاستخدام الداخلى والخارجى , بلوفر خامة ليكرا مـاطة , تصميم جديد وعصرى مع مقاس موحد للجنسين",
    image: "images/518uIhuL4lL._AC_SX569_.jpg",
    id: 4,
    location: "moll masr",
  ),
  Productt(
    price: 400,
    title: "بتطلون رياضي استك عند الخصر وجيب عند الساق للرجال",
    description:
        "بنطلون رياضي للتنزه والركض,يحتوي على 4 جيوب بما في ذلك اثنين على كل جانب، وجيب خلفي واحد وجيب واحد عند الركبة,خامة الليكرا مرنة وقابلة للتمدد لتوفير المزيد من الراحة",
    image: "images/51QDh346pXL._AC_SY879_.jpg",
    id: 5,
    location: "moll masr",
  ),
  Productt(
    price: 350,
    title: "تيشرت بولو قطن باكمام قصيرة مناسب للصيف للرجال",
    description:
        "خامة قطنية مقاومة للحرارة لمزيد من الراحة , يضمن متانة تدوم طويلاً , سهلة التنظيف والصيانة",
    image: "images/41KY1IZ2v0L._AC_SX679_.jpg",
    id: 6,
    location: "moll masr",
  ),
];
