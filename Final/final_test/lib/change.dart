import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChangePage extends StatefulWidget {
  const ChangePage({Key? key}) : super(key: key);

  @override
  State<ChangePage> createState() => _ChangePageState();
}

class _ChangePageState extends State<ChangePage> {
  final formKey = GlobalKey<FormState>();
  TextEditingController totalPrice = TextEditingController();
  TextEditingController customerPay = TextEditingController();
  double change = 0;

  void calculateChange() {
    if (formKey.currentState!.validate()) {
      double price = double.parse(totalPrice.text);
      double pay = double.parse(customerPay.text);

      setState(() {
        change = pay - price;
        _calculateBills();
      });
    }
  }

  // เก็บจำนวนธนบัตรและเหรียญ
  Map<int, int> bills = {};

  void _calculateBills() {
    bills.clear();
    int remainingChange = change.round(); // แปลงเป็นจำนวนเต็ม

    // รายการธนบัตรและเหรียญ (จากมากไปน้อย)
    List<int> thaiCurrency = [1000, 500, 100, 50, 20, 10, 5, 2, 1];

    for (int denom in thaiCurrency) {
      if (remainingChange >= denom) {
        int count = remainingChange ~/ denom;
        bills[denom] = count;
        remainingChange = remainingChange % denom;
      }
    }
  }

  Widget _buildBillsBreakdown() {
    if (change <= 0 || bills.isEmpty) return SizedBox.shrink();

    return Container(
      width: 350,
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Color.fromARGB(255, 101, 140, 88), width: 2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'รายละเอียดการทอนเงิน',
            style: GoogleFonts.notoSansThai(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 15),
          ...bills.entries.map((entry) {
            String type = entry.key >= 20 ? 'ธนบัตร' : 'เหรียญ';
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '$type ${entry.key} บาท',
                    style: GoogleFonts.notoSansThai(fontSize: 16),
                  ),
                  Text(
                    '${entry.value} ${type == 'ธนบัตร' ? 'ใบ' : 'เหรียญ'}',
                    style: GoogleFonts.notoSansThai(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 101, 140, 88),
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Form(
          key: formKey,
          child: ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(20),
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(height: 20),
                  Text(
                    'คำนวณเงินทอนอัตโนมัติ',
                    style: GoogleFonts.notoSansThai(
                      fontSize: MediaQuery.of(context).size.width * 0.06,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    width: 350,
                    child: TextFormField(
                      controller: totalPrice,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'ราคาสินค้าทั้งหมด (บาท)',
                        labelStyle: GoogleFonts.notoSansThai(),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'กรุณากรอกราคาสินค้า';
                        }
                        if (double.tryParse(value) == null) {
                          return 'กรุณากรอกตัวเลขเท่านั้น';
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: 350,
                    child: TextFormField(
                      controller: customerPay,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'จำนวนเงินที่ลูกค้าจ่าย (บาท)',
                        labelStyle: GoogleFonts.notoSansThai(),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'กรุณากรอกจำนวนเงินที่ลูกค้าจ่าย';
                        }
                        if (double.tryParse(value) == null) {
                          return 'กรุณากรอกตัวเลขเท่านั้น';
                        }
                        if (totalPrice.text.isNotEmpty) {
                          double price = double.parse(totalPrice.text);
                          double pay = double.parse(value);
                          if (pay < price) {
                            return 'เงินที่จ่ายไม่เพียงพอ';
                          }
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 101, 140, 88),
                          Color.fromARGB(255, 187, 200, 99),
                        ],
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    width: 350,
                    height: 60,
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      onPressed: calculateChange,
                      icon: Icon(
                        Icons.calculate,
                        color: Colors.white,
                        size: 24,
                      ),
                      label: Text(
                        'คำนวณเงินทอน',
                        style: GoogleFonts.notoSansThai(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Container(
                    width: 350,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 240, 240, 240),
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Color.fromARGB(255, 101, 140, 88),
                        width: 2,
                      ),
                    ),
                    child: Column(
                      children: [
                        Text(
                          'เงินทอน',
                          style: GoogleFonts.notoSansThai(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          '${change.round()} บาท',
                          style: GoogleFonts.notoSansThai(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                            color: change >= 0
                                ? Color.fromARGB(255, 101, 140, 88)
                                : Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                  _buildBillsBreakdown(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
