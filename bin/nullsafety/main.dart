// Nullsafety adalah sebuah fitur untuk mengetahui adanya error akibat adanya data yang bernila null
// Didalam Nullsafety, terdapat penggunanaan syntax baru yaitu :
// penggunanaan tanda ? , ! dan late

// Didalam pubspec.yaml , versi dart yang suport Nullsafety yaitu >= 2.12.0
// Dan versi dart yang belum suport Nullsafety yaitu < 2.12.0 , biasanya 2.7.0

// kesimpulannya
// 1. penggunanaan tanda ? , -> artinya data diperbolehkan null
// 2. penggunanaan tanda ?? , -> artinya untuk mengahandel pengkondisian null
// 3. penggunanaan tanda ! , -> artinya untuk memastikan bahwa data benar benar ada
// 4. penggunanaan tanda late , -> artinya data harus sudah ada sebelum diproses

void main(List<String> args) {
  // contoh:
  // String nama = 'mauludy'; // variabel belum Nullsafety

  // jika data tidak di inisiasi akan terjadi error
  // karena kita menggunakan versi sdk yang suport Nullsafety
  // sehingga variabel yang tidak memiliki value akan error , ketika dijalankan
  // contoh:
  // String nama ;

  // contoh:
  // String? namaNullSafety;
  // penambahan tanda tanya ? pada akhir type data , menandakan variabel ini
  // boleh berisi null  .
  // print(namaNullSafety); // dia bisa di print -> hasilnya null
  // print(nama.length); // namun ketika diminta panjang data , dia akan erro
  // karena null tidak memiliki panjang data .

  // namun ketika versi sdk kita turunin menjadi 2.7.0
  // maka
  // String nama;
  // print(nama);
  // ketika dijalankan , dia tidak akan error. karena system tidak tau kalo datanya itu sebenernya tidak ada
  // namun ketika diminta panjang data , di akan muncul error data null .
  // print(nama.length);
  // untuk' mendapatkan jumlah karakter yang ada didalam string , spasi juga dihitung

  // contoh:
  // String? nama = ''; // tidak ada data , hanya string kosong
  // print(nama);
  // print(nama.length);
  // ini bisa dijalankan , dan tidak ada error .
  // karena memiliki data berupa string kosong .
  // dan panjang data nya adalah 0 .
  // jika tidak ada data , maka yang keluar adalah null.

  late String? nama = getNama();
  // kita bisa menggunakan if else untuk mengecek sebuah data null atau tidak

  if (nama?.length == null) {
    // jika getNama berisi null , akan menampilkan yang ini
    print('Tidak ada data');
  } else {
    // jika getNama ada datanya , akan menampilkan yang ini
    print('namanya $nama dan terdiri dari ${nama!.length} karakter');
  }
  // kita juga bisa menggunakan syntax lain , untuk membuat pengkondisian jika data null
  // print(nama?.length ?? 'Tidak Ada data');
}

String? getNama() {
  // return 'Mauludy';
  return null;
}
