import 'package:flutter/material.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pizzee - More Better Taste',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins', // Pastikan sudah install font ini atau ganti ke default
        primarySwatch: Colors.orange,
      ),
      home: const MainLandingPage(),
    );
  }
}

class MainLandingPage extends StatefulWidget {
  const MainLandingPage({super.key});

  @override
  State<MainLandingPage> createState() => _MainLandingPageState();
}

class _MainLandingPageState extends State<MainLandingPage> {
  final ScrollController _scrollController = ScrollController();
  
  // Keys untuk navigasi scroll
  final GlobalKey _homeKey = GlobalKey();
  final GlobalKey _aboutKey = GlobalKey();
  final GlobalKey _galleryKey = GlobalKey();

  void _scrollToSection(GlobalKey key) {
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    bool isDesktop = MediaQuery.of(context).size.width > 800;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: _buildNavbar(isDesktop),
      ),
      drawer: isDesktop ? null : _buildDrawer(), // Drawer otomatis muncul di mobile
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            // --- SECTION 1: HOME (Hero) ---
            HeroSection(key: _homeKey),

            // --- SECTION 2: ABOUT ---
            AboutSection(key: _aboutKey),

            // --- SECTION 3: GALLERY ---
            GallerySection(key: _galleryKey),

            // --- SECTION 4: FOOD MENU (Desain ke-4) ---
            const FoodMenuSection(),
          
          ],
        ),
      ),
    );
  }

  // --- WIDGET NAVBAR ---
  Widget _buildNavbar(bool isDesktop) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      color: Colors.black.withOpacity(0.5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Foodee",
            style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),
          ),
          if (isDesktop)
            Row(
              children: [
                _navItem("Home", () => _scrollToSection(_homeKey)),
                _navItem("About", () => _scrollToSection(_aboutKey)),
                _navItem("Gallery", () => _scrollToSection(_galleryKey)),
                const SizedBox(width: 20),
                TextButton(onPressed: () {}, child: const Text("Log In", style: TextStyle(color: Colors.white))),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                  onPressed: () {}, 
                  child: const Text("Sign Up", style: TextStyle(color: Colors.black)),
                ),
              ],
            )
          else
            Builder(
              builder: (context) => IconButton(
                icon: const Icon(Icons.menu, color: Colors.white),
                onPressed: () => Scaffold.of(context).openDrawer(),
              ),
            ),
        ],
      ),
    );
  }

  Widget _navItem(String title, VoidCallback onTap) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: InkWell(
        onTap: onTap,
        child: Text(title, style: const TextStyle(color: Colors.white, fontSize: 16)),
      ),
    );
  }

  Widget _buildDrawer() {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(child: Center(child: Text("PIZZEE", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)))),
          ListTile(title: const Text("Home"), onTap: () => _scrollToSection(_homeKey)),
          ListTile(title: const Text("About"), onTap: () => _scrollToSection(_aboutKey)),
          ListTile(title: const Text("Gallery"), onTap: () => _scrollToSection(_galleryKey)),
        ],
      ),
    );
  }
}

// --- SECTION WIDGETS ---

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/home_bg.jpg'), // Ganti sesuai filemu
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        color: Colors.black.withOpacity(0.4),
        padding: const EdgeInsets.only(left: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text("Foodee", style: TextStyle(color: Colors.white, fontSize: 80, fontWeight: FontWeight.bold)),
            Text("More Better Taste For Your Day", style: TextStyle(color: Colors.white, fontSize: 24)),
          ],
        ),
      ),
    );
  }
}

class FoodMenuSection extends StatelessWidget {
  const FoodMenuSection({super.key});
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: const Color(0xFFE5E5E5), // Warna background krem sesuai desain terakhir
      padding: EdgeInsets.symmetric(horizontal: width * 0.1, vertical: 50),
      child: Column(
        children: [
          // Header Konten Foodee
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Chose What Do You Like", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              ElevatedButton(onPressed: () {}, child: const Text("Order Now")),
            ],
          ),
          const SizedBox(height: 30),
          // Grid Menu Responsive
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: width > 900 ? 4 : (width > 600 ? 2 : 1),
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              childAspectRatio: 0.8,
            ),
            itemCount: 8, // Misal ada 8 menu
            itemBuilder: (context, index) {
              return Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/food_item.png', height: 100), // Ganti image
                    const Text("Pizza / Burger", style: TextStyle(fontWeight: FontWeight.bold)),
                    const Text("\$ 5.45", style: TextStyle(color: Colors.orange)),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

// Tambahkan class AboutSection dan GallerySection serupa dengan HeroSection...
class AboutSection extends StatelessWidget {
  const AboutSection({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(50),
      color: Colors.white,
      child: const Center(child: Text("About Section - Isi sesuai desain gambar ke-2")),
    );
  }
}

class GallerySection extends StatelessWidget {
  const GallerySection({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(50),
      color: Colors.black87,
      child: const Center(child: Text("Gallery Section - Isi sesuai desain gambar ke-3", style: TextStyle(color: Colors.white))),
    );
  }
}

// Scaffold(
//   body: SingleChildScrollView(
//     child: Column(
//       children: [
//         Navbar(),
//         HeroSection(),
//         SliderSection(),
//         ChooseMenuSection(),
//         QualitySection(),
//         ServicesSection(),
//         OrderSection(),
//         TestimonialSection(),
//         Footer(),
//       ],
//     ),
//   ),
// );
