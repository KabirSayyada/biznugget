import 'dart:math';
import 'package:uuid/uuid.dart';
import '../models.dart';

class TradersService {
  static String get randomId {
    return const Uuid().v1();
  }

  static final List<Trader> traders = List.generate(20, (index) {
    return Trader(
      id: randomId,
      name: 'Trader $index',
      image:
          'https://images.unsplash.com/photo-1517048676732-d65bc937f952?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
      address: '1 ABD Close Lagos State',
      phone: '+234 8032538192',
      email: 'trader$index@biznugget.com',
      description: """
       Welcome to Trader $index, where we specialize in providing top-notch trading solutions to clients across the globe. Our company is dedicated to helping our clients achieve their financial goals through our expertise in trading and investments.

At our company, we offer a wide range of trading services, including commodities, futures, forex, and options trading. Our team of experienced traders and analysts work tirelessly to analyze market trends and provide our clients with the most accurate and up-to-date trading advice.

We pride ourselves on our commitment to integrity, transparency, and reliability. Our clients can trust us to handle their investments with the utmost care and diligence, and we go above and beyond to ensure that their trading experience with us is seamless and hassle-free.

Whether you're a seasoned trader or just getting started, our trading company has everything you need to succeed in the world of trading. Contact us today to learn more about our services and start your journey towards financial freedom.
       """,
      rating: Random().nextDouble() * 5,
    );
  });

  static Trader getTrader(String traderId) {
    return traders.firstWhere((trader) => trader.id == traderId);
  }
}
