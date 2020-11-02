class Validation {
  // FUNGSI validatePassword > NAMA FUNGSI BEBAS
  String validatePassword(String value) {
    //MENERIMA VALUE DENGAN TYPE STRING
    if (value.length < 8) {
      //VALUE TERSEBUT DI CEK APABILA KURANG DARI 8 KARAKTER
      return 'Password Minimal 8 Karakter'; //MAKA ERROR AKAN DITAMPILKAN
    }
    return null; //SELAIN ITU LOLOS VALIDASI
  }

  String validateEmail(String value) {
    if (!value.contains('@')) {
      //JIKA VALUE MENGANDUNG KARAKTER @
      return 'Email Anda Tidak Valid'; //MAKA PESAN DITAMPILKAN
    }
    return null;
  }

  String validateName(String value) {
    if (value.isEmpty) {
      //JIKA VALUE KOSONG
      return 'Nama Lengkap Harus Diisi'; //MAKA PESAN DITAMPILKAN
    }
    return null;
  }

  String validateClas(String value) {
    if (value.isEmpty) {
      //JIKA VALUE KOSONG
      return 'Nama Kelas Harus Diisi'; //MAKA PESAN DITAMPILKAN
    }
    return null;
  }
}
