import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Localization
class LocalizationService extends Translations {
  static var locale = Locale('en', 'US');
  static final arabicLocale = Locale('ar', 'AR'); // Arabic locale

  static final fallbackLocale = Locale('en', 'US');

  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'Product Details': 'Product Details',
          'product_name': 'Product Name',
          'product_description': 'Product Description',
          'specifications': 'Specifications',
          'switch_language': 'Switch Language',
        },
        'ar_AR': {
          'Product Details': 'تفاصيل المنتج',
          'product_name': 'اسم المنتج',
          'product_description': 'وصف المنتج',
          'specifications': 'المواصفات',
          'switch_language': 'تغيير اللغة',
        },
      };
}

// Model
class Product {
  final int productId;
  final String productName;
  final String productDescription;
  final List<Map<String, String>> specifications;

  Product({
    required this.productId,
    required this.productName,
    required this.productDescription,
    required this.specifications,
  });
}

// Viewmodel
class ProductDetailController extends GetxController {
  @override
  void onInit() {
    fetchProductDetails();
    super.onInit();
  }

  var product = Product(
    productId: 0,
    productName: '',
    productDescription: '',
    specifications: [],
  ).obs;

  void fetchProductDetails() {
    // Simulating fetching product details from API or database
    var productData = {};

    if (LocalizationService.locale == LocalizationService.arabicLocale) {
      productData = {
        "product_id": 73,
        "product_name": "ايفون 13 برو",
        "product_description":
            "The iPhone 13 Pro is Apple’s latest and greatest smartphone, offering a powerful set of features in a sleek and stylish design. With a revolutionary new camera system and longer battery life, the iPhone 13 Pro is the perfect choice for those who demand a premium experience.\r\n\r\nThe iPhone 13 Pro has a sleek and modern design, featuring an all-new matte finish. The device is constructed from durable materials, and its sleek design makes it comfortable to hold and easy to slip in and out of your pocket or handbag. The handset also features Apple’s trademark True Tone display technology, which adjusts the screen’s colors to better suit the environment. The phone is available in three colors – space gray, silver, and gold.\r\n\r\nThe iPhone 13 Pro’s camera system is one of its highlights. The triple-camera setup, which consists of a wide-angle, ultra-wide and telephoto lenses, offers amazing image quality and flexibility. It’s capable of capturing stunning 4K video at up to 60 fps, and it also offers an array of features such as Night Mode and Apple’s new portrait lighting effects. The front-facing camera is also impressive, with a resolution of 12MP and the ability to record 4K video.\r\n\r\nThe iPhone 13 Pro is powered by Apple’s new A14 Bionic chipset, which is the most powerful chip ever found in a smartphone. This translates to smooth performance and seamless multitasking, with no lag or stuttering. The device also features 6GB of RAM and up to 512GB of storage, so you won’t have to worry about running out of space when it comes to downloading apps and games.\r\n\r\nThe iPhone 13 Pro has an impressive battery life, thanks to its new and improved battery technology. The handset is rated to last up to 20 hours of video playback and up to 18 hours of internet usage, so you won’t have to worry about it dying on you in the middle of the day. The device also supports wireless charging, so you can top up your battery without having to plug it in.\r\n\r\nThe iPhone 13 Pro runs Apple’s latest and greatest operating system. This OS offers a host of features, such as widgets and App Library, which makes it easier to find and organize your apps. It also supports the latest versions of popular apps, such as Adobe Photoshop and Microsoft Office.\r\n\r\nThe iPhone 13 Pro is an impressive device that offers a plethora of features in a sleek and stylish design. It’s powered by Apple’s newest A14 Bionic chipset, and it offers an impressive triple-camera setup and long battery life. It also runs the latest version of iOS, so you can take advantage of all the latest features and apps. If you’re looking for a premium experience, then the iPhone 13 Pro is the perfect choice.",
        "specifications": [
          {"attribute_name": "حجم الشاشة", "attribute_value": "6.1 بوصة"},
          {"attribute_name": "ماركة", "attribute_value": "أبل"},
          {
            "attribute_name": "التخزين الداخلي",
            "attribute_value": "جيجابايت 128, جيجابايت 256 ,جيجابايت 512, 1 ترأ"
          },
          {"attribute_name": "ذاكرة", "attribute_value": "6 جيجابايت"},
          {"attribute_name": "نظام التشغيل", "attribute_value": "آي أو إس"},
          {
            "attribute_name": "حالة",
            "attribute_value":
                "جيدة مملوكة مسبقًا ومملوكة مسبقًا وجيدة جدًا ومملوكة مسبقًا وممتازة"
          },
          {"attribute_name": "نوع الكاميرا", "attribute_value": "مزدوج (2x)"},
          {
            "attribute_name": "لون",
            "attribute_value": "أحمر، ستارلايت، ميد نأيت، أزرق، وردي، أخضر"
          },
          {"attribute_name": "شريحة جوال", "attribute_value": "مفتوح"},
          {"attribute_name": "نواة المعالج", "attribute_value": "6"},
          {"attribute_name": "دقة", "attribute_value": "2340 x 1080"},
          {"attribute_name": "موصل", "attribute_value": "المضيئة"},
          {
            "attribute_name": "شريحة الاتصال الإلكترونية",
            "attribute_value": "نعم"
          },
          {"attribute_name": "شريحة مزدوجة", "attribute_value": "نعم"},
          {"attribute_name": "شبكة", "attribute_value": "الجيل الخامس"}
        ]
      };
    } else {
      productData = {
        "product_id": 73,
        "product_name": "IPhone 13 Pro",
        "product_description":
            "The iPhone 13 Pro is Apple’s latest and greatest smartphone, offering a powerful set of features in a sleek and stylish design. With a revolutionary new camera system and longer battery life, the iPhone 13 Pro is the perfect choice for those who demand a premium experience.\r\n\r\nThe iPhone 13 Pro has a sleek and modern design, featuring an all-new matte finish. The device is constructed from durable materials, and its sleek design makes it comfortable to hold and easy to slip in and out of your pocket or handbag. The handset also features Apple’s trademark True Tone display technology, which adjusts the screen’s colors to better suit the environment. The phone is available in three colors – space gray, silver, and gold.\r\n\r\nThe iPhone 13 Pro’s camera system is one of its highlights. The triple-camera setup, which consists of a wide-angle, ultra-wide and telephoto lenses, offers amazing image quality and flexibility. It’s capable of capturing stunning 4K video at up to 60 fps, and it also offers an array of features such as Night Mode and Apple’s new portrait lighting effects. The front-facing camera is also impressive, with a resolution of 12MP and the ability to record 4K video.\r\n\r\nThe iPhone 13 Pro is powered by Apple’s new A14 Bionic chipset, which is the most powerful chip ever found in a smartphone. This translates to smooth performance and seamless multitasking, with no lag or stuttering. The device also features 6GB of RAM and up to 512GB of storage, so you won’t have to worry about running out of space when it comes to downloading apps and games.\r\n\r\nThe iPhone 13 Pro has an impressive battery life, thanks to its new and improved battery technology. The handset is rated to last up to 20 hours of video playback and up to 18 hours of internet usage, so you won’t have to worry about it dying on you in the middle of the day. The device also supports wireless charging, so you can top up your battery without having to plug it in.\r\n\r\nThe iPhone 13 Pro runs Apple’s latest and greatest operating system. This OS offers a host of features, such as widgets and App Library, which makes it easier to find and organize your apps. It also supports the latest versions of popular apps, such as Adobe Photoshop and Microsoft Office.\r\n\r\nThe iPhone 13 Pro is an impressive device that offers a plethora of features in a sleek and stylish design. It’s powered by Apple’s newest A14 Bionic chipset, and it offers an impressive triple-camera setup and long battery life. It also runs the latest version of iOS, so you can take advantage of all the latest features and apps. If you’re looking for a premium experience, then the iPhone 13 Pro is the perfect choice.",
        "specifications": [
          {"attribute_name": "Screen Size", "attribute_value": "6.1 Inches"},
          {"attribute_name": "Camera Type", "attribute_value": "Double (2x)"},
          {"attribute_name": "Brand", "attribute_value": "Apple"},
          {
            "attribute_name": "Internal Storage",
            "attribute_value": "128 GB, 256 GB, 512 GB, 1 TB"
          },
          {"attribute_name": "Memory", "attribute_value": "6 GB"},
          {"attribute_name": "Operating System", "attribute_value": "IOS"},
          {
            "attribute_name": "Color",
            "attribute_value":
                "Graphite, Gold, Silver, Sierra Blue, Alpine Green"
          },
          {
            "attribute_name": "Condition",
            "attribute_value":
                "Pre Owned Good, Pre Owned Very Good, Pre Owned Excellent"
          },
          {"attribute_name": "SIM card", "attribute_value": "Unlocked"},
          {"attribute_name": "Processor Core", "attribute_value": "6"},
          {"attribute_name": "Resolution", "attribute_value": "2340 x 1080"},
          {"attribute_name": "Connector", "attribute_value": "Lightning"},
          {"attribute_name": "eSIM", "attribute_value": "Yes"},
          {"attribute_name": "Double SIM", "attribute_value": "Yes"},
          {"attribute_name": "Network", "attribute_value": "5G"}
        ]
      };
    }

    product(Product(
      productId: productData['product_id'] as int? ?? 0,
      productName: productData['product_name'] as String? ?? '',
      productDescription: productData['product_description'] as String? ?? '',
      specifications: (productData['specifications'] as List<dynamic>?)
              ?.map((spec) => spec as Map<String, String>)
              .toList() ??
          [],
    ));
  }
}

// View
class ProductDetailScreen extends StatelessWidget {
  final ProductDetailController controller = Get.put(ProductDetailController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'.tr),
        actions: [
          IconButton(
            onPressed: () {
              var newLocale =
                  LocalizationService.locale == LocalizationService.arabicLocale
                      ? LocalizationService.fallbackLocale
                      : LocalizationService.arabicLocale;

              LocalizationService.locale = newLocale;

              controller.fetchProductDetails();
              print('Switching to locale: $newLocale');
              Get.updateLocale(newLocale);
            },
            icon: Icon(Icons.language),
            tooltip: 'Switch Language'.tr,
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Obx(() => Text(
                  controller.product.value.productName,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                )),
            SizedBox(height: 16),
            Text(
              'specifications'.tr,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Obx(() => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: _buildSpecificationsList(
                      controller.product.value.specifications),
                )),
            SizedBox(height: 16),
            Obx(() => Text(
                  controller.product.value.productDescription,
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 16),
                )),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildSpecificationsList(
      List<Map<String, String>> specifications) {
    return specifications.map((spec) {
      return ListTile(
        title: Text(
          spec['attribute_name'] ?? '',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(spec['attribute_value'] ?? ''),
      );
    }).toList();
  }
}

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    translations: LocalizationService(),
    locale: LocalizationService.locale,
    fallbackLocale: LocalizationService.fallbackLocale,
    home: ProductDetailScreen(),
  ));
}
