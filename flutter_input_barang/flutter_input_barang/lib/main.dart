import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: BarangForm(),
  ));
}

class BarangForm extends StatefulWidget {
  @override
  _BarangFormState createState() => _BarangFormState();
}

class _BarangFormState extends State<BarangForm> {
  final _formKey = GlobalKey<FormState>();

  // Controller untuk input
  TextEditingController kodeBarangController = TextEditingController();
  TextEditingController namaBarangController = TextEditingController();
  TextEditingController hargaController = TextEditingController();
  TextEditingController jumlahController = TextEditingController();
  TextEditingController diskonController = TextEditingController();

  // Variabel untuk hasil perhitungan
  double total = 0;
  double diskon = 0;
  double bayar = 0;

  // Fungsi untuk menghitung total, diskon, dan bayar
  void hitungTotal() {
    double harga = double.tryParse(hargaController.text) ?? 0;
    int jumlah = int.tryParse(jumlahController.text) ?? 0;
    double persenDiskon = double.tryParse(diskonController.text) ?? 0;

    setState(() {
      total = harga * jumlah;
      diskon = total * (persenDiskon / 100);
      bayar = total - diskon;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Barang'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: kodeBarangController,
                decoration: InputDecoration(labelText: 'Kode Barang'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Masukkan Kode Barang';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: namaBarangController,
                decoration: InputDecoration(labelText: 'Nama Barang'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Masukkan Nama Barang';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: hargaController,
                decoration: InputDecoration(labelText: 'Harga'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Masukkan Harga';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: jumlahController,
                decoration: InputDecoration(labelText: 'Jumlah'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Masukkan Jumlah';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: diskonController,
                decoration: InputDecoration(labelText: 'Diskon (%)'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Masukkan Diskon';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    hitungTotal();
                  }
                },
                child: Text('Submit'),
              ),
              SizedBox(height: 20),
              // Output hasil perhitungan
              Text('Total: Rp $total'),
              Text('Diskon: Rp $diskon'),
              Text('Bayar: Rp $bayar'),
            ],
          ),
        ),
      ),
    );
  }
}
