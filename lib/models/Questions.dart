class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question({this.id, this.question, this.answer, this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question": "Bagaimana cara melestarikan hewan agar tidak punah ?",
    "options": [
      'Dibiarkan saja',
      'Dilestarikan di kebun binatang',
      'Mengurung mereka di kandang',
      'Tidak memberinya makan'
    ],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question":
        "Dimanakah hewan yang ada dibawah ini yang sudah langka atau kurang populasinya ?",
    "options": ['Ayam', 'Ular', 'Burung Cendrawasih', 'Sapi'],
    "answer_index": 2,
  },
  {
    "id": 3,
    "question":
        "Pilihlah hewan dibawah ini yang menurut kamu aman dan dapat dijadikan hewan peliharaan dirumah",
    "options": ['Buaya', 'Singa', 'Ular', 'Kucing'],
    "answer_index": 3,
  },
  {
    "id": 4,
    "question":
        "Suatu kehidupan yang mana terdapat hubungan timbal balik yang terjadi antar makhluk hidup dan lingkungannya disebut dengan ...",
    "options": ['Habitat', 'Ekosistem', 'Gunung', 'Lingkungan'],
    "answer_index": 1,
  },
  {
    "id": 5,
    "question":
        "Setiap burung mempunyai bentuk paruh yang berbeda - beda tergantung dengan jenis ...",
    "options": ['Bulunya', 'Makanannya', 'Kakinya', 'Ekornya'],
    "answer_index": 1,
  },
  {
    "id": 6,
    "question":
        "Upaya melestarikan dari makhluk hidup bertujuan agar makhluk hidup tidak ...",
    "options": ['Punah', 'Beranak', 'Berkembangbiak', 'Bertambah'],
    "answer_index": 0,
  },
  {
    "id": 7,
    "question": "Bentuk paruh yang tajam dan kuat berguna untuk ...",
    "options": [
      'Makan biji-bijian',
      'Merobek mangsa',
      'Ambil ikan dari air',
      'Meraik nektar mekar'
    ],
    "answer_index": 1,
  },
  {
    "id": 8,
    "question": "Yang termasuk burung pemakan biji-bijian adalah ...",
    "options": [
      'Burung pipit dan burung kenari',
      'Burung elang',
      'Burung pelikan',
      'Burung hantu'
    ],
    "answer_index": 0,
  },
  {
    "id": 9,
    "question": "Berikut ini adalah makhluk hidup,kecuali ...",
    "options": ['Manusia', 'Air', 'Hewan', 'Tanaman'],
    "answer_index": 1,
  },
  {
    "id": 10,
    "question":
        "Proses mengadaptasi makhluk hidup dengan lingkungannya disebut ...",
    "options": ['Ekosistem', 'Morfologi', 'Pengaturan', 'Habitat'],
    "answer_index": 3,
  }
];
