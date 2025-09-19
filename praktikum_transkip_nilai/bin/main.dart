import 'dart:io';
import 'mata_kuliah.dart';

// Data transkrip
List<MataKuliah> transkrip = [
  MataKuliah('IF101', 'Algoritma', 3, 3.5),
  MataKuliah('IF102', 'Basis Data', 3, 4.0),
  MataKuliah('IF103', 'Pemrograman', 4, 3.0),
];

void main() {
  bool exit = false;
  while (!exit) {
    print('\nPilih opsi:');
    print('1. Hitung IPK');
    print('2. Filter Nilai Bagus');
    print('3. Tampilkan Daftar Ringkas');
    print('4. Keluar');
    stdout.write('Masukkan pilihan Anda: ');

    var input = stdin.readLineSync();
    switch (input) {
      case '1':
        hitungIpk();
        break;
      case '2':
        filterNilaiBagus();
        break;
      case '3':
        tampilkanNilaiTerformat();
        break;
      case '4':
        exit = true;
        print('Terima kasih!');
        break;
      default:
        print('Pilihan tidak valid.');
    }
  }
}

void hitungIpk() {
  double totalNilai = transkrip.map((mk) => mk.nilai * mk.sks).reduce((a, b) => a + b);
  int totalSks = transkrip.map((mk) => mk.sks).reduce((a, b) => a + b);
  double ipk = totalNilai / totalSks;
  print('\nIPK: ${ipk.toStringAsFixed(2)}');
}

void filterNilaiBagus() {
  var nilaiBagus = transkrip.where((mk) => mk.nilai >= 3.5);
  print('\nMata kuliah dengan nilai bagus:');
  for (var mk in nilaiBagus) {
    print('${mk.nama} (${mk.nilai})');
  }
}

void tampilkanNilaiTerformat() {
  print('\nDaftar Ringkas:');
  transkrip.map((mk) => '${mk.nama}: ${mk.nilai}').forEach(print);
}