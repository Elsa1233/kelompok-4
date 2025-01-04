import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class JadwalController extends GetxController {
  late TextEditingController cJadwal_kunjungan;
  late TextEditingController cJumlah_pengunjung;
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  void onInit() {
    super.onInit();
    cJadwal_kunjungan = TextEditingController();
    cJumlah_pengunjung = TextEditingController();
  }

  // Replace the empty add method with this:
  void add(String jadwal_kunjungan, String jumlah_pengunjung) async {
    try {
      await firestore.collection("jadwal").add({
        "jadwal_kunjungan": jadwal_kunjungan,
        "jumlah_pengunjung": jumlah_pengunjung,
      });
      Get.defaultDialog(
        title: "Berhasil",
        middleText: "Berhasil menyimpan data jadwal",
        onConfirm: () {
          cJadwal_kunjungan.clear();
          cJumlah_pengunjung.clear();
          Get.back();
        },
        textConfirm: "OK"
      );
    } catch (e) {
      print(e);
      Get.defaultDialog(
        title: "Terjadi Kesalahan",
        middleText: "Gagal Menambahkan jadwal.",
      );
    }
  }
  
  @override
  void onClose() {
    cJadwal_kunjungan.dispose();
    cJumlah_pengunjung.dispose();
    super.onClose();
  }
}